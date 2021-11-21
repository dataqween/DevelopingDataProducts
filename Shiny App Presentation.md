Developing Data Products
Shiny App Presentation
========================================================
author: M Anderson
date: 11/19/2021
font-family: 'Helvetica'
autosize: true
transition: rotate
type: section

Introduction
========================================================
type: sub-section

This [app](https://dataqween.shinyapps.io/ForwardApp/) is a comparison tool of Wisconsin Forward Exam proficiency levels by school district.  The Wisconsin Forward Exam is an annual summative assessment measuring progress toward college and career readiness in the subjects of English language arts, mathematics, science, and social studies.  Students in grades 3-8 & 10 take the assessment in the spring of each school year.

The Data
========================================================
type: sub-section

The data used in this [app](https://dataqween.shinyapps.io/ForwardApp/) is provided for free by the [Wisconsin Department of Public Instruction](https://dpi.wi.gov/wisedash/download-files).  




```r
knitr::kable(sample)
```

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> SCHOOL_YEAR </th>
   <th style="text-align:left;"> DISTRICT_NAME </th>
   <th style="text-align:left;"> SchoolLevel </th>
   <th style="text-align:left;"> TEST_SUBJECT </th>
   <th style="text-align:left;"> Proficient </th>
   <th style="text-align:right;"> Proficient_Percent </th>
   <th style="text-align:right;"> Proficient_Count </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 2015-16 </td>
   <td style="text-align:left;"> [Statewide] </td>
   <td style="text-align:left;"> All Students </td>
   <td style="text-align:left;"> ELA </td>
   <td style="text-align:left;"> Not proficient </td>
   <td style="text-align:right;"> 55.78 </td>
   <td style="text-align:right;"> 203536 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015-16 </td>
   <td style="text-align:left;"> [Statewide] </td>
   <td style="text-align:left;"> All Students </td>
   <td style="text-align:left;"> ELA </td>
   <td style="text-align:left;"> Not tested </td>
   <td style="text-align:right;"> 1.55 </td>
   <td style="text-align:right;"> 5640 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015-16 </td>
   <td style="text-align:left;"> [Statewide] </td>
   <td style="text-align:left;"> All Students </td>
   <td style="text-align:left;"> ELA </td>
   <td style="text-align:left;"> Proficient </td>
   <td style="text-align:right;"> 42.67 </td>
   <td style="text-align:right;"> 155680 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015-16 </td>
   <td style="text-align:left;"> [Statewide] </td>
   <td style="text-align:left;"> All Students </td>
   <td style="text-align:left;"> Mathematics </td>
   <td style="text-align:left;"> Not proficient </td>
   <td style="text-align:right;"> 56.03 </td>
   <td style="text-align:right;"> 204435 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015-16 </td>
   <td style="text-align:left;"> [Statewide] </td>
   <td style="text-align:left;"> All Students </td>
   <td style="text-align:left;"> Mathematics </td>
   <td style="text-align:left;"> Not tested </td>
   <td style="text-align:right;"> 1.43 </td>
   <td style="text-align:right;"> 5204 </td>
  </tr>
</tbody>
</table>

The App
========================================================
type: sub-section

The [app](https://dataqween.shinyapps.io/ForwardApp/) provides several filtering options to customize your comparison:  
- <font size="6"> Use the Subject radial dial to select between English language arts, mathematics, science, or social studies. </font>

- <font size="6"> Use the School Level drop down box to select all students, elementary students, or middle school students. </font>

- <font size="6"> Use the School District check boxes to select school districts for comparison. </font>

Output Example
========================================================
type: sub-section

App output for the following inputs:
<font size="6"> Subject = Mathematics, School Level = All Students, Districts = Statewide, Brown Deer, & Wauwatosa </font>

<img src="Shiny App Presentation-figure/unnamed-chunk-3-1.png" title="plot of chunk unnamed-chunk-3" alt="plot of chunk unnamed-chunk-3" style="display: block; margin: auto;" />

