package json;

import com.alibaba.fastjson.JSON;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import org.json.JSONArray;
import org.json.JSONObject;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by AnLu on
 * 2017/6/26 19:34.
 * JavaEE_1702
 */
public class Test {
    public static void main(String[] args) throws JsonProcessingException {
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.configure(SerializationFeature.INDENT_OUTPUT,true);

        Weather weather = new Weather("33","50","6");
        System.out.println(objectMapper.writeValueAsString(weather));

        String jsonObjectString,jsonArrayString;

        List<Weather> weathers = new ArrayList<>();
        for (int i = 0; i < 3; i++) {
            weathers.add(new Weather("tmp"+i,"hum"+i,"spd"+i));
        }
        System.out.println(objectMapper.writeValueAsString(weathers));

        System.out.println("\n---json.org---\n");

        JSONObject jsonObject = new JSONObject(weather);
        System.out.println(jsonObject.toString(4));

//        JSONArray jsonArray = new JSONArray(weather);
//        System.out.println(jsonArray.toString(4));

        System.out.println("\n---jackson---\n");

        try {
            jsonObjectString = objectMapper.writeValueAsString(weather);
            System.out.println(jsonObjectString);

            jsonArrayString = objectMapper.writeValueAsString(weathers);
            System.out.println(jsonArrayString);

            System.out.println(objectMapper.readValue(jsonObjectString,Weather.class));

//            System.out.println(objectMapper.readValue(jsonArrayString, TypeFactory.defaultInstance().constructCollectionType(List.class,Weather.class)));
//            System.out.println(objectMapper.readValue(jsonArrayString, new TypeReference<List<Weather>>() {
//            }));

//            System.out.println(objectMapper.readValue(jsonArrayString,objectMapper.getTypeFactory().constructCollectionType(List.class,Weather.class)));
            System.out.println(Arrays.asList(objectMapper.readValue(jsonArrayString,Weather[].class)));
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println("\n---gson---\n");

        Gson gson = new GsonBuilder().setPrettyPrinting().create();

        jsonObjectString = gson.toJson(weather);
        System.out.println(jsonObjectString);

        jsonArrayString = gson.toJson(weathers);
        System.out.println(jsonArrayString);

        System.out.println(gson.fromJson(jsonObjectString,Weather.class));

//        System.out.println(gson.fromJson(jsonArrayString,new TypeToken<List<Weather>>(){
//        }.getType()));
//        System.out.println(gson.fromJson(jsonArrayString,ArrayList.class));

        System.out.println("\n---fastjson---\n");

        jsonObjectString = JSON.toJSONString(weather,true);
        System.out.println(jsonObjectString);

        jsonArrayString = JSON.toJSONString(weathers,true);
        System.out.println(jsonArrayString);

        System.out.println(JSON.parseObject(jsonObjectString,Weather.class));

        System.out.println(JSON.parseArray(jsonArrayString,Weather.class));
    }
}
