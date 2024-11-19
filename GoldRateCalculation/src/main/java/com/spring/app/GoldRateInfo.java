package com.spring.app;

import java.util.Map;

public class GoldRateInfo {

	private Map<Integer,Double>rateInfo;

	public Map<Integer, Double> getRateInfo() {
		return rateInfo;
	}

	public void setRateInfo(Map<Integer, Double> rateInfo) {
		this.rateInfo = rateInfo;
	}
//	public void getRateInfo(Map<Integer, Double> rateInfo) {
//		this.rateInfo = rateInfo;
//	}
	
	public double calculateGoldRate(int goldCarat, double grams) 
	{
		
		Double ratePerGram = rateInfo.get(goldCarat);
        if (ratePerGram != null) {
            return ratePerGram * grams;
        } else {
            throw new IllegalArgumentException("Invalid gold carat: " + goldCarat);
        }

		
//		double totalRate=0.0;
//		double ratePerGram = rateInfo.get(goldCarat);
//		//fill the code
//		if((ratePerGram != null)) {
//			return ratePerGram* grams;
//		}
//		else 
//			throw new IllegalArugumentException("Invalid gold carat."+ goldCarat);
//		}
//		return totalRate;
	
	
	
	}
}
