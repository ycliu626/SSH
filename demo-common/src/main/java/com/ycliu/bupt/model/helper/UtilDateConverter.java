package com.ycliu.bupt.model.helper;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.apache.log4j.Logger;
import org.apache.struts2.util.StrutsTypeConverter;

public class UtilDateConverter extends StrutsTypeConverter {
    private static final Logger LOGGER = Logger.getLogger(UtilDateConverter.class);

    @Override
    @SuppressWarnings("all")
    public Object convertFromString(Map context, String[] values, Class toClass) {
        if (null == values || values[0].equals("")) {
            return null;
        }
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        try {
            LOGGER.info("values[0] = " + values[0]);
            Date date = sdf.parse(values[0]);
            return new java.sql.Date(date.getTime());
        } catch (ParseException e) {
            SimpleDateFormat shortSdf = new SimpleDateFormat("yyyy-MM-dd");
            try {
                Date date = shortSdf.parse(values[0]);
                return new java.sql.Date(date.getTime());
            } catch (ParseException e1) {
                try {
                    SimpleDateFormat timeSdf = new SimpleDateFormat("hh:mm:ss");
                    Date date = timeSdf.parse(values[0]);
                    return new java.sql.Date(date.getTime());
                } catch (ParseException e2) {
                    try {
                        return new Date(values[0]);
                    } catch (Exception e3) {
                        return values[0];
                    }
                }
            }
        }
    }

    @Override
    @SuppressWarnings("all")
    public String convertToString(Map context, Object value) {
        LOGGER.info("---------------------in time converter");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        return sdf.format(value);
    }
}
