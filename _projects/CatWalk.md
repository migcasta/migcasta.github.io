---
layout: page
title: project
description: Modeling pet behavior during unsupervised walks using a GPS tracker on a domestic cat
img: assets/img/publication_preview/CatWalkThumb.png
importance: 1
category: fun
---

What happens when someone like me has a cat and orders a GPS tracker?

Well .... this is what happens. I started to crunch some math, do some research and implement some algorithms. By the time it took for the GPS tracker to be delivered to my home, I already had an AI to model the behavior of my cat and make predictions. 

The AI is based on clustering methods to identify the places that my cat frequently visits. A stochastic Markov Chain model is later estimated in order to describe the probability of the cat traveling between frequently visited places. 

The underlying clustering method used was DBSCAN. I had however to extend DBSCAN by being able to iterate the clustering over consecutive walks of the cat and to include forgetting rutines. The forgetting routines would favor the most recent GPS readins, as the AI has to adapt to behavioral changes of the cat such as seasonal changes. I used to live close to the arctic circle at that time. So imagine temperatures ranging from -40 to +40 degrees. Add to the mix complete darkness in winter and continuous daylight in summer. 

Some uses of this sytem where- 
i)  detect abnormal behaviors when your cat might be endangered
ii) know the most likely places to look for you animal in case of GPS failure
iii) in ocassions the cats loose the GPS collar, and if the collar is out of battery you will never find it. In case of loosing the collar, the system can tell you the most likely places where you cat have been after the battery has died
iv) obtain real-time estimations of e.g. the time that it will take for the cat to arrive back home. 



<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/CatWalking.png" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Clustering algotihgm applied after some of the first 100 walks. Notice e.g. how i) three places are detected in walk 1. Two of these three places (cyan and green) are later merged and form the red cluster after walk 15. i) the cat explores new places and the algorithm incorporates them (see the green cluster in walk 15), iii) at walk 58 there are other two places (magenta and yellow) identified which are later forgotten as they are not frequently visited. 
</div>


I wrote a scintific paper based on this pet project. But since it was not funded work, you know ..... I never really finish the last details and submit it. Perhaps I will do it soon. In the meanwhile you can go to the "about" section in my web and download the paper draft form the featured publications. Perhaps I will also share the code when I find some time. 

