# Experiments 

A/B Testing is the most essential tool marketers can use to target visitors by testing their responses to varying content. This article introduces Solodev users to Experiments. Experiments allows users to test different iterations of content on different pages and track the iterations receiving the most conversions and engagement.

With Solodev Experiments, users can experiment with different pieces of content on a page, the copy on a page, images on page, different hero iterations, and sliders. This article shows the user how to create and modify experiments and their entries. 

!!! Note: 
Prior to conducting experiments in Solodev, users should arrange the different iterations to be tested. Given that visitors can see the different iterations of content on the website, Solodev recommends ensuring that the correct iterations are tested. Content cannot be a page itself, but a file in the web files directory with an .HTML or .TPL extension. 
!!!

## Step 1 – Add an Experiment 

* Open the **web files -> content -> experiments** directory. 
* Click **Add Experiment** to bring up the Add Experiment window.
* Enter the **Name**. 
* Click **Submit**. 

!!!Note: 
Name and describe your experiments so that at first glance, collaborators know the intent of the experiment, in this case, the intent is to see which performs better, a static hero image or a hero slider. 
!!!

## Step 2 – Add an entry to an Experiment 

* Click on the **beaker icon** next to the experiment name to open the experiment.
* Add content to the experiment by clicking the **Browse** button.
* Select **home-slider.tpl** (Solodev’s slider), located in the **web files -> content -> home** directory, for the first iteration of the experiment and click **Choose**.
* The first iteration of the experiment is displayed to the left of the **Browse** button.
* To configure the content, enter the name adjust the frequency, and click the checkbox located under the **Active** column.
* Click **Save**.
* Scroll to the right and click the orange **+** button to populate a new row.
* Follow the steps 1 – 6 to add the second iteration. For this iteration, select **home-video.tpl** located in the **web files -> content -> home** directory. 

## Step 3 – Adding an experiment to a page

* Open the page that will contain the experiment and select the dropzone for the experiment.
* Select the experiment from the web files directory and click **Publish**.

!!!Note: 
50% of site visitors will see the Video iteration of the homepage and the remainder will see the Hero Slider iteration.
!!!

## Step 4 – Modifying an experiment

Users can gain insight into the success of their content while running experiments. Solodev Experiments allows users to capitalize on those insights and modify experiments. * Users can change the frequency of the iterations in an experiment, disable an iteration in the experiment or add further iterations to an experiment. 


### Step 4a – Changing the frequency of iterations in an experiment

If an iteration in an experiment does not perform well, users may want to increase the frequency to gain more data. Alternatively, users may want to decrease the frequency or remove the iteration altogether in which that content is displayed. 

* Open the experiment to display the iterations. 
* Adjust the frequency sliders. 
* Click **Save**. 

!!!Note: 
As you can see above, the slider entry has a higher conversion rate than the video entry does. We'll increase the frequency of the slider and decrease the frequency of the video.
!!!
 
### Step 4b – Removing iterations/entries from an experiment 

* Open the experiment to display the iterations. 
* Scroll to the right and click the grey – button.
* Click **Save**.

### Step 4c – Adding iterations

In the previous example, this document guided the user through creating an experiment with two iterations. Suppose that the user would like to test more than one slider and more than one video image. In this case, the user can add content to the web files folder to add further iterations to the experiment. 

* Open the experiment to display the iterations.
* Click the orange **+** button on the far right of the Slider to add a new row. 
* Click **Browse**, select the desired content from the file tree, and click **Choose**.
* Enter the name of the frequency, click the checkbox in the **Active** column and adjust the frequency slider. 
* Click **Save** to save the iteration.

### Step 4d – Disabling an iteration 

* Open the experiment to display the iterations.
* Click the checkbox to remove the check mark from the **Active** column.
* Click **Save**. 

## Step 5 – Deleting an Experiment 

* Open the folder containing the experiment. 
* Select the checkbox next to the experiment.
* Click **Delete** to bring up the modal window.
* Review the warning and click **Submit**.

!!! Note: 
While Solodev Experiments tracks conversion rates locally, users can send conversion data to google optimize, which is integrated with google analytics, for granular tracking. To leverage Google Optimize, create a new experiment that mimics the variations configured in Solodev and place the Google Optimize key in the **Google Experiment ID field**.
!!!
 