**Tableau Dashboard Overview**

<div class='tableauPlaceholder' id='viz1720579226447' style='position: relative'><noscript><a href='#'><img alt='Retention Dashboard ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Te&#47;TelemedicineCaseStudy_17205633182660&#47;RetentionDashboard&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='TelemedicineCaseStudy_17205633182660&#47;RetentionDashboard' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Te&#47;TelemedicineCaseStudy_17205633182660&#47;RetentionDashboard&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /><param name='filter' value='publish=yes' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1720579226447');                    var vizElement = divElement.getElementsByTagName('object')[0];                    if ( divElement.offsetWidth > 800 ) { vizElement.style.width='1600px';vizElement.style.height='827px';} else if ( divElement.offsetWidth > 500 ) { vizElement.style.width='1600px';vizElement.style.height='827px';} else { vizElement.style.width='100%';vizElement.style.height='1977px';}                     var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>

The Tableau dashboard is designed to provide a comprehensive visualization of therapist retention metrics and trends. Key features include interactive filters for date range, employment type, and license, allowing users to explore the data dynamically.

*Filter Options:*
Date Range: Users can select specific timeframes to analyze retention trends.
Employment Type: Allows filtering by different categories such as full-time, part-time, etc.
License: Enables comparison of retention metrics across different therapist licenses.

Volume Numbers and Patient Metrics:
Offers a quick snapshot of key metrics such as total volume numbers, distinct patients seen by therapists, and the frequency of patient returns to individual clinicians. This section provides a simple overview of patient engagement and retention patterns.

Non-Retained Volumes by License:
This chart visualizes the absolute number of non-retained patients categorized by therapist license. It helps provide volume context to rates.

Quarterly Retention Rate Trend Line Plot:
Displays a trend line plot showing the quarterly retention rates over time. This visual highlights trends or fluctuations in therapist retention rates across quarters.

Heatmap of Non-Retained Rates by Quarter and Grouping Subcategory:
Utilizes a heatmap to track non-retained rates across each quarter, categorized by therapist license and employment type. This heatmap provides a detailed view of how retention rates vary by these categories over time.


**Approach and Hypotheses:**

I aimed to consolidate data by clinician_id to integrate all clinician details with each unique visit conducted. Initially, I utilized R for data wrangling, focusing on metrics such as patient return rates after their first visit and provider switching. These metrics were then transferred into Tableau for visualization.

My central hypothesis was to investigate quarterly retention rates by license type to identify any significant variations over time. I intended to delve deeper by stratifying retention rates by licensing level and further categorizing by employment type. This approach would facilitate a nuanced visual depiction of high and low performers within the organization.

---

**Measurement of Patient Retention:**

Patient retention was defined as their return to Included Health within three years. For this case study, any returning patient was considered retained. In real-world scenarios, I would collaborate with clinical and operational stakeholders to establish a specific timeframe that defines retention.

---

**Conclusions on Therapist Retention:**

Overall, the analysis revealed no standout trends in retention rates across general groupings of therapists. Outliers were predominantly observed at the individual clinician level, so I would like to know more about it. Notably, towards the end of 2022, licensed full-time counselors exhibited a non-retention rate of approximately 11-12%, notably higher than their counterparts in the ~5% range. Similarly, by Q4 2023, clinical social workers stood out with a 12% non-retention rate.

---

**Influence of License and Employment Type on Retention:**

The analysis suggested that license and employment type may influence retention rates. However, no conclusive patterns emerged at the general grouping level, indicating that any influence is likely more pronounced at the individual clinician level.

---

**Recommendations for Practice Actions:**

Based on the findings, I recommend investigating individual outliers in retention rates. Engaging stakeholders to determine if recent operational changes could have contributed to heightened non-retention rates would be beneficial. For instance, instances where therapist turnover led to lapses in patient follow-up should be thoroughly reviewed.

