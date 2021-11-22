from numpy.core.fromnumeric import size
import pandas as pd
import re
from plotnine import*
from skbio.diversity import beta_diversity
from skbio.stats.ordination import *
from scipy.spatial.distance import pdist, squareform
from sklearn.decomposition import PCA



if __name__ == '__main__':
     # Box plot
#     resultDf = pd.read_csv('./transfer_result/layer-2.csv')
#     resultDf.rename(columns={'Unnamed: 0': 'SampleID'}, inplace=True)
#     resultMelt = resultDf.melt(id_vars='SampleID', var_name='Env', value_name='Contribution')
#     resultMelt['Env'] = resultMelt['Env'].apply(lambda x: x[re.search('(root:)', x).end():] if re.search('(root:)', x) else x)
#     p = (ggplot(resultMelt, aes(x='Env', y='Contribution'))+
#          geom_boxplot()+
#          xlim(['kindergarten', 'Pupils', 'mid_school', 'youth', 'mid_age', 'elder', 'Unknown'])+
#          theme_bw())
#     p.save('./transfer_result/plot.jpg')

     # PCOA plot
     metaNormal = pd.read_csv('../../../data/normal-meta.csv', index_col=0)['Group']
     abundanceNormal = pd.read_csv('../../../data/relative-abundance.csv', index_col=0)[metaNormal.index.tolist()].T
     print(abundanceNormal.shape)
     jsDm = squareform(pdist(abundanceNormal, metric='jensenshannon'))
     jsPcoa = pd.DataFrame(pcoa(jsDm, number_of_dimensions=2).samples.values.tolist(), 
                              index=abundanceNormal.index, columns=['PC1', 'PC2'])
     print(jsPcoa)
     pcoaPlot = (ggplot(jsPcoa, aes('PC1', 'PC2', color=metaNormal, fill=metaNormal))+
                    geom_point(size=2)+
                    stat_ellipse(geom = "polygon", alpha = 0.25)+
                    theme_bw()+
                    theme(axis_line = element_line(color="gray", size = 2))+
                    theme(panel_grid_major = element_blank(), panel_grid_minor = element_blank(), panel_background = element_blank())+
                    theme(figure_size=(10, 10))+
                    theme(legend_position = (0.8,0.8))+
                    theme(text=element_text(size=20)))
     pcoaPlot.save('pcoa_plot.jpg')
     
     # PCA plot
     pca = PCA(n_components=2)
     pcaDf = pd.DataFrame(data = pca.fit_transform(abundanceNormal), columns=['PC1', 'PC2'])
     pcaDf['Env'] = metaNormal.values
     pcaPlot = (ggplot(pcaDf, aes('PC1', 'PC2', color='Env', fill='Env'))+
                    geom_point(size=2)+
                    stat_ellipse(geom = "polygon", alpha = 0.25)+
                    theme_bw()+
                    theme(axis_line = element_line(color="gray", size = 2))+
                    theme(panel_grid_major = element_blank(), panel_grid_minor = element_blank(), panel_background = element_blank())+
                    theme(figure_size=(10, 10))+
                    theme(legend_position = (0.8,0.8))+
                    theme(text=element_text(size=20)))
     pcaPlot.save('pca_plot.jpg')
     
     