public class Table {

    public static void showMultiplication(Integer baseValue, Integer maxMultiplier) {
        if (baseValue == null || maxMultiplier == null) {
            System.debug('Provide valid base and limit.');
            return;
        }

        for (Integer counter = 1; counter <= maxMultiplier; counter++) {
            Integer resultValue = baseValue * counter;
            System.debug(baseValue + ' x ' + counter + ' = ' + resultValue);
        }
    }

    public static void showListItems(List<String> itemsToDisplay){
        if(itemsToDisplay == null || itemsToDisplay.isEmpty()){
            System.debug('Provide a valid list.');
            return;
        }
        for(String singleItem : itemsToDisplay){
            System.debug(singleItem);
        }

    }

}