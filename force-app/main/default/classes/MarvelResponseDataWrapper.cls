public with sharing class MarvelResponseDataWrapper {
    public Integer code;
    public String status;
    public DataWrapper data;

    public class DataWrapper {
        public Integer total;
        public Integer count;
        public List<ResultWrapper> results;
    }

    public class ResultWrapper {
        public Integer id;
        public String title;
        public ThumbWrapper thumbnail;
    }

    public class ThumbWrapper {
        public String path;
        public String extension;
    }
    
}
