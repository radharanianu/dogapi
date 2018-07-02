package com.mfc.api.soalac.demos;

import com.mfc.api.soalac.Karate;
import cucumber.api.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
@CucumberOptions(features = "classpath:com/intuit/karate/junit4/features")
public class SoapRunner {

}