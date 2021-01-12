public class Calcolatrice {
    private final static int MAX_G = 31;
    private final static int MIN_G = 1;
    private final static int MAX_M = 12;
    private final static int MIN_M = 1;
    private final static int MAX_A = 5000;
    private final static int MIN_A = 1000;
    private char input;
    private int giorniInput;
    private int giorno1;
    private int mese1;
    private int anno1;
    private int giorno2;
    private int mese2;
    private int anno2;
    private int temp;
    private int nGiorni;
    private int cont1 = 0;
    private int cont2 = 0;

    public void setGiorno1(int giorno1) throws Exception {
        if (giorno1 > MAX_G || giorno1 < MIN_G) {
            throw new Exception("giorno non valido");
        }
        this.giorno1 = giorno1;
    }

    public void setMese1(int mese1) throws Exception {
        if (mese1 > MAX_M || mese1 < MIN_M) {
            throw new Exception("mese non valido");
        }
        this.mese1 = mese1;
    }

    public void setAnno1(int anno1) throws Exception {
        if (anno1 > MAX_A || anno1 < MIN_A) {
            throw new Exception("l'anno è fuori scala");
        }
        this.anno1 = anno1;
    }
    
    public void setGiorniInput(int giorniInput) throws Exception {
        if (giorniInput < 0){
            throw new Exception("impossibile sommare i giorni dati in input");
        }
        this.giorniInput = giorniInput;
    }

    private int contagiorni(int mese1){
        switch (mese1){
            case 1, 3, 5, 7, 8, 10, 12:
                return 31;
            case 2:
                if (mese1 % 4 == 0){
                    if (anno1 % 100 != 0){
                        return 29;
                    }
                    if (anno1 % 400 == 0){
                        return 29;
                    }
                }
                return 28;
            case 4, 6, 9, 11:
                return 30;
            default:
                return 0;
        }
    }

    public void differenza(){
        temp = giorniInput;
        while(giorniInput != 0){
            nGiorni = contagiorni(mese1);

        }
        
    }

    public void somma(){
        while (cont2 < giorniInput){
            if (mese1 == 1 || mese1 == 3 || mese1 == 5 || mese1 == 7 || mese1 == 8 || mese1 == 10 || mese1 == 12) { // controllo se è un mese con 31 giorni
                if (giorno1 + giorniInput > 31){
                    giorniInput = (giorno1 + giorniInput) - 31;         //aggiungere il resto fuori da tutti if
                    mese1 += 1;
                    if (mese1 > 12){
                        mese1 = 1;
                        anno1 += 1;
                    }
                    cont2 += 31;
                }
                else {
                    cont2 = 100000;
                    giorniInput = giorno1+giorniInput;
                }
            }
            if (mese1 == 4 || mese1 == 6 || mese1 == 9 || mese1 == 11){
                if (giorno1 + giorniInput > 30){
                    giorniInput = (giorno1 + giorniInput) - 30;         //aggiungere il resto fuori da tutti if
                    mese1 += 1;
                    /*if (mese1 == 13){
                        mese1 = 0;
                        anno1 += 1;
                    }*/
                    cont2 += 30;
                }
                else {
                    cont2 = 100000;
                    giorniInput = giorno1+giorniInput;
                }
            }
            if (mese1 == 2){
                if (anno1 % 4 == 0){
                    if (anno1 % 100 != 0){
                        if (giorno1 + giorniInput > 29){
                            giorniInput = (giorno1 + giorniInput) - 29;         //aggiungere il resto fuori da tutti if
                            mese1 += 1;
                            /*if (mese1 == 13){
                                mese1 = 0;
                                anno1 += 1;
                            }*/
                            cont2 += 29;
                        }
                        else {
                            cont2 = 100000;
                            giorniInput = giorno1+giorniInput;
                        }
                    }
                    if (anno1 % 400 == 0){
                        if (giorno1 + giorniInput > 29){
                            giorniInput = (giorno1 + giorniInput) - 29;         //aggiungere il resto fuori da tutti if
                            mese1 += 1;
                            /*if (mese1 == 13){
                                mese1 = 0;
                                anno1 += 1;
                            }*/
                            cont2 += 29;
                        }
                        else {
                            cont2 = 100000;
                            giorniInput = giorno1+giorniInput;
                        }
                    }
                }
            }
            else if (giorno1 + giorniInput > 28){
                giorniInput = (giorno1 + giorniInput) - 28;
                mese1+=1;
                cont2+=28;
            }
            else{
                cont2 = 10000;
                giorniInput = giorno1+giorniInput;
            }
        }
        giorno1 = giorniInput;
    }

    public int getGiorno1(){
        return this.giorno1;
    }

    public int getMese1(){
        return this.mese1;
    }

    public int getAnno1(){
        return this.anno1;
    }
    public int getGiorniInput(){
        return this.giorniInput;
    }

    Calcolatrice(){

    }
}
