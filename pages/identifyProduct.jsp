<meta http-equiv="Content-Type" content="text/html; charaset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*" pageEncoding="utf-8" %>

<%@ page import = "java.util.Arrays" %>
<%@ page import = "java.util.stream.Collectors" %>
<%!
    String acctualName( String num ){
        String temp = "" ;
        switch(num){
            case "1" :
                temp = "百樂0.4超細摩擦筆" ;
                break ;
            case "2" :
                temp = "百點自動原子筆B-460系列(0.8mm)" ;
                break ;
            case "3" :
                temp = "UNI M5-858GG α 自動鉛筆" ;
                break ;
            case "4" :
                temp = "三菱uni-ball SigNo UM-151 0.38 極細中性筆" ;
                break ;
            case "5" :
                temp = "白金牌PLATINUM電腦閱卷鉛筆MB-10/2B細芯" ;
                break ;
            case "6" :
                temp = "TOMBOW 蜻蜓 - 書寫系 graph 自動鉛筆 0.5mm" ;
                break ;
            case "7" :
                temp = "LAMY AL-star 恆星系列 鋼筆71" ;
                break ;
            case "8" :
                temp = "飛龍Pentel 德拉迪塑膠鋼筆" ;
                break ;
            case "9" :
                temp = "LAMY LX 奢華系列鋼筆 / 珍珠光 palladium" ;
                break ;
            case "10" :
                temp = "LAMY safari 狩獵者系列 鋼筆19" ;
                break ;
            case "11" :
                temp = "【PLATINUM 万年筆】プロシオン" ;
                break ;
            case "12" :
                temp = "德國KAWECO Special系列鋁合金鋼筆 黑 F" ;
                break ;
            case "13" :
                temp = "ARTEX 尊爵-窄版鋼筆" ;
                break ;
            case "14" :
                temp = "ARTEX 極致半節鋼筆-夏日扶桑" ;
                break ;
            case "15" :
                temp = "利百代liberty高級六角皮頭鉛筆 (12支/盒)" ;
                break ;
            case "16" :
                temp = "日本製 KUMON 分齡原木 三角鉛筆" ;
                break ;
            case "17" :
                temp = "Urban 鉛筆" ;
                break ;
            case "18" :
                temp = "【雄獅】火柴塗頭鉛筆" ;
                break ;
            case "19" :
                temp = "三菱鉛筆 ダース2B/12支/打" ;
                break ;
            case "20" :
                temp = "三菱【Uni-ball】自動中性筆(0.5mm)" ;
                break ;
            case "21" :
                temp = "百樂PILOT自動中性筆BL-G2-L" ;
                break ;
            case "22" :
                temp = "飛龍Pentel極速鋼珠筆BLN75-C/0.5mm" ;
                break ;
            case "23" :
                temp = "三菱【Uni-ball】超細0.38中性筆8色組" ;
                break ;
            case "24" :
                temp = "UNI KURU TOGA M5-1017 0.5mm自動鉛筆" ;
                break ;
            case "25" :
                temp = "STAEDTLER 施德樓 925系列金屬系列製圖自動鉛筆" ;
                break ;
            case "26" :
                temp = "百點PG1003-1009自動鉛筆" ;
                break ;
            case "27" :
                temp = "TOMBOW 蜻蜓 - 書寫系 霓虹 graph 自動鉛筆 0.5mm" ;
                break ;
            case "28" :
                temp = "百點A810T 金屬自動鉛筆(0.5mm)" ;
                break ;
            case "29" :
                temp = "日本 NOLTY 2020 年式 U 系列手帳 / 週曆 / 新書 size" ;
                break ;
            case "30" :
                temp = "NoteBook Modular A4 百搭筆記本" ;
                break ;
            case "31" :
                temp = "KOKUYO Campus 超薄型360度活頁夾筆記本(20孔)" ;
                break ;
            case "32" :
                temp = "【iPaper】日本 LIFE 筆記本 一筆箋 銀曄花 縦罫 L1036" ;
                break ;
            case "33" :
                temp = "【iPaper】設計師系列筆記本 004 RFC 2324 超文字咖啡壺控制協定" ;
                break ;
            case "34" :
                temp = "KOKUYO 無針訂書機美壓版5枚" ;
                break ;
            case "35" :
                temp = "KOKUYO 兩用機能剪刀(不沾黏)" ;
                break ;
            case "36" :
                temp = "KOKUYO KARUCUT膠台輕巧型(大)" ;
                break ;
            case "37" :
                temp = "KOKUYO Compact Alpha無針釘書機5枚" ;
                break ;
            case "38" :
                temp = "[日本原裝 倉敷意匠計画室] しゅんしゅん 的素描紙膠帶・島波" ;
                break ;
            case "39" :
                temp = "[日本原裝 倉敷意匠計画室] ナンシー関 版畫信箋/便條本・大家的後腦勺" ;
                break ;
            case "40" :
                temp = "[日本原裝 倉敷意匠計画室] トモタケ黑色貓咪印花紙巾/紙餐巾・A" ;
                break ;
        }

        return temp ;
    }
%>