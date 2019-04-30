package com.mfc.api.soalac;


import cucumber.api.CucumberOptions;

import org.junit.runner.RunWith;



/**
 *
 * @author EQA Automation
 */
@RunWith(Karate.class)
@CucumberOptions(
		
		features = "classpath:com/mfc/api/soalac/features",
		tags		= {"@getalldogslist,@verifyRetrieverbreedwithinthelist,@getretriever_sub_list,@randomimagelinkforgolden"},
		plugin 		= {"pretty:STDOUT","html:Reports/cucumberhtmlreport",
		"com.cucumber.listener.ExtentCucumberFormatter:Output/Dogs_List.html"}
		)

public class Dogs_Runner extends JUnitHTMLReporter  {
	
	
    
}