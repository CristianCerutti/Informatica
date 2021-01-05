public class Principale {
    public static void main(String[] args) throws Exception {
        Calcolatrice c = new Calcolatrice();
        CLInput cli = new CLInput();
        System.out.println("inserire il numero dei giorni da aggiungere: ");
        c.setGiorniInput(cli.readInt("inserire il numero di giorni da aggiungere: "));
        System.out.println("inserire il numero dei giorni: ");
        c.setGiorno1(cli.readInt("inserire il numero dei giorni: "));
        System.out.println("inserire il numero del mese: ");
        c.setMese1(cli.readInt("inserire il numero del mese: "));
        System.out.println("inserire l'anno: ");
        c.setAnno1(cli.readInt("inserire l'anno: "));
        c.somma();
        System.out.println("giorno: "+c.getGiorniInput());
        System.out.println("mese: "+c.getMese1());
        System.out.println("anno: "+c.getAnno1());
    }
}
