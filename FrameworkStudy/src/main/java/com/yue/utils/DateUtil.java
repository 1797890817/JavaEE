package com.yue.utils;

 
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

import org.apache.commons.lang.StringUtils;

 

/**
 * Description : 日期、时间相关的功能.
 * <p>
 * 일자패턴 사용시의 문법
 * <pre>
 *   Symbol   Meaning                 Presentation        Example
 *   ------   -------                 ------------        -------
 *   G        era designator          (Text)              AD
 *   y        year                    (Number)            1996
 *   M        month in year           (Text & Number)     July & 07
 *   d        day in month            (Number)            10
 *   h        hour in am/pm (1~12)    (Number)            12
 *   H        hour in day (0~23)      (Number)            0
 *   m        minute in hour          (Number)            30
 *   s        second in minute        (Number)            55
 *   S        millisecond             (Number)            978
 *   E        day in week             (Text)              Tuesday
 *   D        day in year             (Number)            189
 *   F        day of week in month    (Number)            2 (2nd Wed in July)
 *   w        week in year            (Number)            27
 *   W        week in month           (Number)            2
 *   a        am/pm marker            (Text)              PM
 *   k        hour in day (1~24)      (Number)            24
 *   K        hour in am/pm (0~11)    (Number)            0
 *   z        time zone               (Text)              Pacific Standard Time
 *   '        escape for text         (Delimiter)
 *   ''       single quote            (Literal)           '
 *
 *  [예시]
 *   Format Pattern                         Result
 *   --------------                         -------
 *   "yyyyMMdd"                        ->>  19960710
 *   "yyyy-MM-dd"                      ->>  1996-07-10
 *   "HHmmss"                          ->>  210856
 *   "HH:mm:ss"                        ->>  21:08:56
 *   "hh:mm:ss"                        ->>  09:08:56
 *   "yyyy.MM.dd hh:mm:ss"             ->>  1996.07.10 15:08:56
 *   "EEE, MMM d, ''yy"                ->>  Wed, July 10, '96
 *   "h:mm a"                          ->>  12:08 PM
 *   "hh 'o''clock' a, zzzz"           ->>  12 o'clock PM, Pacific Daylight Time
 *   "K:mm a, z"                       ->>  0:00 PM, PST
 *   "yyyyy.MMMMM.dd GGG hh:mm aaa"    ->>  1996.July.10 AD 12:08 PM
 *
 * </pre>
 * 기타 자세한 것은 <a href="http://java.sun.com/j2se/1.4.2/docs/api/java/text/SimpleDateFormat.html">SimpleDateFormat</a>
 * Class API Document 를 참조할것
 * 
 * @author 양유민 (010-9990-6878, perfectjava94@gmail.com)
 * <pre>
 *  2007. 02. 23 최초작성 by 양유민
 *  2007. 04. 20 default 형식 변경 및 메소드 추가  by 양유민
 *  2007. 05. 02 특정패턴을 가진 날짜 형식을 Date 객체로 바꿀때 TimeZone 영역의 'ZZ'를
 *               해석가능하도록 기능추가 by 양유민
 *  2007. 05. 07 {@link #getDateString(Date, String, String)} 추가 by 양유민 
 * </pre>
 */
public class DateUtil {
	
	
	/**
	 * DATE형의 FORMAT : 
	 * yyyy-MM-dd'T'HH:mm:ssZ<p>
	 * 예) 2008-01-05T15:19:21+0900
	 */
//	public static final String FORMAT_DATE_TIME = "EEE, dd MMM yyyy HH:mm:ss Z";
	public static final String FORMAT_DATE_TIME = "yyyy-MM-dd'T'HH:mm:ss'+09:00'";
	
	public static final String PDA_DATE_TIME = "yyyy-MM-dd'T'HH:mm:ssZ";
	
	public static final String SEVEN_FORMAT_DATE_TIME = "yyyy-MM-dd'T'HH:mm:ss'+09:00'";
	
	public static final String SEVEN_FORMAT_DATE_TIME_NOTCOLON = "yyyy-MM-dd'T'HH:mm:ss'+0900'";
	
	public static final String SEVEN_CALENDAR_DATE_TIME = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";
	public static final String SEVEN_CALENDAR_DATE_TIME2 = "yyyy-MM-dd'T'HH:mm:ss.SSSZ";
	
	public static final String EVENT_FORMAT_DATE_TIME = "yyyy-MM-dd'T'HH:mm:ss'Z'";
	
	/**
	 * DATE형의 FORMAT : &quot;yyyyMMdd&quot;
	 */
	public static final String FORMAT_DATE 		 = "yyyyMMdd"; // 일자
	
	/**
	 * DATE형의 FORMAT : &quot;yyyyMM01&quot;
	 * <br>첫날
	 */
	public static final String FORMAT_DATE_FIRST = "yyyyMM01"; // 첫날
	
	/**
	 * DATE형의 FORMAT : &quot;HHmmss&quot;
	 * <br>시간
	 */
	public static final String FORMAT_TIME		 = "HHmmss"; // 시간
	//Wed, 20 Dec 2006 16:43:43 +0900
	
	public static final String SINGLEMAIL_FORMAT = "yyyy-MM-dd HH:mm:ss";
	
	public static final String SINGLEMAIL_FORMAT_CURRENT = "HHmm";
	
	public static final String SINGLE_APPROVAL_FORMAT = "yyyy-MM-dd HH:mm";
	
	public static final String SINGLE_APPROVAL_FORMAT_ANOTHER = "MMM dd, yyyy HH:mm";
	
	public static final String SINGLE_APPROVAL_CANCEL = "yyyyMMddHHmmss";
	
	public static final String DBSYNC_FORMAT = "yyyy-MM-dd HH:mm:ss";
	
	public static final String KOLON_APPROVAL_DATE_FORMAT = "yyyyMMddHHmmss";
	/**
	 * 문자열의 값이 일자값인지 검증
	 *
	 * @param textDate 일자값을 가진 8자리 문자열 예) '20070223'
	 * @return 일자값이면 true, 아니면 false
	 */
//	public static boolean isDate(String textDate) {
//		try {
//			dateCheck(textDate);
//		} catch (Exception e) {
//			return false;
//		}
//		return true;
//	}

	/**
	 * 내부적인 Date Value Check용 임
	 * @param textDate
	 */
//	private static void dateCheck(String textDate) throws Exception {
//		if (textDate.length() != 8)
//			throw new Exception("[" + textDate + "] is not date value");
//
//		SimpleDateFormat sdf = new SimpleDateFormat(DateUtil.FORMAT_DATE);
//
//		try {
//			sdf.setLenient(false);
//			sdf.parse(textDate);
//		} catch (Exception e) {
//			throw new Exception("[" + textDate + "] is not date value");
//		}
//		return;
//	}

	/**
	 * 일자값을 가진 8자리 문자열로 Calendar 객체를 생성
	 * @param textDate 일자값을 가진 8자리 문자열 예) '20070223'
	 * @return Calendar 객체
	 */
//	public static Calendar getCalendar(String textDate) throws Exception {
//		//dateCheck(textDate);
//		int year = Integer.parseInt(textDate.substring(0, 4));
//		int month = Integer.parseInt(textDate.substring(4, 6));
//		int date = Integer.parseInt(textDate.substring(6, 8));
//		
//		Calendar cal = Calendar.getInstance();
//		
//		if (textDate.length() == 14) {
//			int hour = Integer.parseInt(textDate.substring(8, 10));
//			int minute = Integer.parseInt(textDate.substring(10, 12));
//			int second = Integer.parseInt(textDate.substring(12, 14));
//			cal.set(year, (month - 1), date, hour, minute, second);
//		} else {
//			cal.set(year, (month - 1), date); 
//		}
//		
//		
//		return cal;
//	}

	
	/**
	 * 표준포맷 문자열을 java.util.Date 로 변환시킴
	 * <p>
	 * 2007.04.20. 표준포맷 변경됨(14자리 -> rfc822)
	 * 
	 * @param textDate 표준 format 문자열(RFC822)
	 * @return Date 객체
	 * @deprecated use {@link #convertRFC822ToDate(String)}
	 */
//	public static Date getDate(String textDate) throws Exception{
//		return convertRFC822ToDate(textDate);
//	}

	/**
	 * 주어진 Date 객체를 이용하여 주어진 패턴 날짜형의 문자열을 구함.
	 * @param date 원하는 일자의 Date 객체
	 * @param pattern 원하는 일자 패턴
	 * @return 주어진 패턴의 일자
	 */
	public static String getDateString(Date date, String pattern){
		SimpleDateFormat sdf = new SimpleDateFormat(pattern);
		return sdf.format(date);
	}
	
	/**
	 * 국내는 현재와 동일 
	 * @param date
	 * @param pattern
	 * @param mailhost
	 * @return
	 */
//	public static String getDateStringByMailhost(Date date, String pattern, String mailhost){
//		SimpleDateFormat sdf = new SimpleDateFormat(pattern);
//		
//		String id = "GMT+9";
//		if (PEMGlobal.EUMailhost.contains(mailhost)) {
//			id = "GMT+0";
//			sdf.setTimeZone(TimeZone.getTimeZone(id));
//		}else if(PEMGlobal.USAMailhost.contains(mailhost)) {
//			id = "GMT-5";
//			sdf.setTimeZone(TimeZone.getTimeZone(id));
//		}
//		return sdf.format(date);
//	}
	
	/**
	 * 주어진 Date 객체를 이용하여 주어진 패턴 날짜형의 문자열을 언어설정에 맞게 구함.
	 * <pre>
	 * Dependencies : None
	 * Side Effects : None
	 * </pre>
	 *
	 * @param date 원하는 일자의 Date 객체
	 * @param pattern pattern 원하는 일자 패턴
	 * @param language 포맷할 데이터의 언어
	 * @return
	 */
	public static String getDateString(Date date, String pattern, String language) {
		SimpleDateFormat sdf = new SimpleDateFormat(pattern, new Locale(language));	
		return sdf.format(date);
	}

	/**
	 * 주어진 Date 객체를 이용하여 기본날짜형의 문자열을 구함.
	 * @param date 원하는 일자의 Date 객체
	 * @return 주어진 패턴의 일자
	 */
	public static String getDateString(Date date) {
		return getDateString(date, FORMAT_DATE);
	}
	
	/**
	 * 결재, 임직원조회에서 사용하는 포맷
	 * @return
	 */
	public static String getPDADefaultDateString() {
		return getDateString(new Date(), PDA_DATE_TIME);
	}
	
	/**
	 * 세븐 일정 인터페이스에서 사용하는 포맷
	 */
	public static String getSevenCalendarDateString(){
		return getDateString(new Date(), SEVEN_CALENDAR_DATE_TIME);
	}

	/**
	 * 주어진 일자를 이용하여 주어진 패턴 날짜형의 문자열을 구함.
	 * @param textDate 일자값을 가진 8자리 문자열 예) '20070223'
	 * @param pattern 원하는 일자 패턴
	 * @return 주어진 패턴의 일자
	 */
//	public static String getDateString(String textDate, String pattern)  throws Exception{
//		String date = null;
//		if (textDate != null && !textDate.equals("")) {
//			date = getDateString(convertRFC822ToDate(textDate), pattern);
//		} else {
//			date = "";
//		}
//		return date;
//	}

	/**
	 * 주어진 패턴 날짜형 시스템일자를 구함
	 * @param pattern 원하는 일자 패턴
	 * @return 시스템 일자
	 */
	public static String getToday(String pattern){
		return getDateString(new Date(), pattern);
	}

	/**
	 * 기본패턴 날짜형 시스템일자시간를 구함
	 * @return 기본형의 시스템 일자시간
	 */
//	public static String getDateTimeSystem(){
//		return getToday(DateUtil.FORMAT_DATE_TIME);
//	}

	/**
	 * 기본패턴('DateUtil.FORMAT_TIME') 날짜형 시스템시간을 구함
	 * @return 기본형('DateUtil.FORMAT_TIME')의 시스템 시간
	 */
//	public static String getTimeSystem(){
//		return getToday(DateUtil.FORMAT_TIME);
//	}


	/**
	 * 현재 시스템의 Date 객체를 구함.
	 * <pre>
	 * Dependencies : None
	 * Side Effects : None
	 * </pre>
	 *
	 * @return
	 */
	public static Date getNow(){
		return new Date();
	}
	
	/**
	 * 지정한 분리자를 이용한 시스템일자를 구함
	 * @param delmt 원하는 분리자 문자 예) ':', '/' ...
	 * @return 분리자가 삽입된 시스템 시간
	 */
//	public static String getTime(char delmt){
//		return getToday("HH" + delmt + "mm" + delmt + "ss");
//	}

	/**
	 * 지정된 일자로 부터 일정기간 이후의 일자를 구함
	 * @param fromDate 시작일자
	 * @param termDays 원하는 기간
	 * @param both 양편넣기 여부
	 * @deprecated 사용안함
	 * @return 일정기간 이후의 일자 
	 */
//	public static String getToDate(String fromDate, int termDays, boolean both) throws Exception{
//		if (both) termDays = termDays - 1;
//		Calendar cal = getCalendar(fromDate);
//		cal.add(Calendar.DATE, termDays);
//		return getDateString(cal.getTime(), DateUtil.FORMAT_DATE);
//	}
	
	/**
	 * 지정된 개월수로 부터 일정기간의 달을 얻어온다.
	 * @param fromDate 현재 일자
	 * @param termMonths 원하는 기간
	 * @param both 양편넣기 여부
	 * @return 일정기간 이후의 개월 ('DateUtil.FORMAT_DATE')
	 * @deprecated 사용안함
	 * @throws Exception
	 */
//	public static String getToMonth(String fromDate, int termMonths, boolean both) throws Exception {
//		if (both) termMonths = termMonths - 1;
//		Calendar cal = getCalendar(fromDate);
//		cal.add(Calendar.MONTH, termMonths);
//		return getDateString(cal.getTime(), DateUtil.FORMAT_DATE);
//	}
	
	/**
	 * 해당되는 월의 마지막 일자를 얻어온다.
	 * @param date 현재 일자
	 * @return 현재일자의 마지막 월 일자
	 * @deprecated 사용안함
	 * @throws Exception
	 * 
	 */
//	public static String getLastDayOfMonth(String date) throws Exception {
//		Calendar cal = getCalendar(date);
//		cal.roll(Calendar.MONTH, true);
//		
//		String firstDate = getDateString(cal.getTime(), DateUtil.FORMAT_DATE_FIRST);
//		Calendar cal2 = getCalendar(firstDate);
//		cal2.add(Calendar.DATE, -1);
//		
//		return getDateString(cal2.getTime(), DateUtil.FORMAT_DATE);
//		
//	}

	/**
	 * 지정된 일자로 부터 일정기간 이후의 일자를 한편넣기방식으로 구함.
	 * @param fromDate 시작일자
	 * @param termDays 원하는 기간
	 * @return 일정기간 이후의 일자 (DateUtil.FORMAT_DATE)
	 * @deprecated 사용안함
	 */
//	public static String getToDate(String fromDate, int termDays) throws Exception{
//		return getToDate(fromDate, termDays, false);
//	}

	/**
	 * 시작일로부터 종료일까지의 일수를 구함
	 * @param fromDate 시작일자
	 * @param toDate 종료일자
	 * @param both 양편넣기 여부
	 * @return 시작일자로 부터 종료일까지의 일수
	 * @deprecated 사용안함
	 */
//	public static int getDiffDays(Date fromDate, Date toDate, boolean both){
//		long diffDays = toDate.getTime() - fromDate.getTime();
//		long days = diffDays / (24 * 60 * 60 * 1000);
//		if (both){
//			if (days >= 0) days += 1; else days -= 1;
//		}
//		return new Long(days).intValue();
//	}

	/**
	 * 시작일로부터 종료일까지의 일수를 한편넣기로 계산함.
	 * @param fromDate 시작일자
	 * @param toDate 종료일자
	 * @return 시작일자로 부터 종료일까지의 일수
	 * @deprecated 사용안함
	 */
//	public static int getDiffDays(Date fromDate, Date toDate){
//		return getDiffDays(fromDate, toDate, false);
//	}

	/**
	 * 시작일로부터 종료일까지의 일수를 구함
	 * @param fromDate 시작일자
	 * @param toDate 종료일자
	 * @param both 양편넣기 여부
	 * @return 시작일자로 부터 종료일까지의 일수
	 * @deprecated 사용안함
	 */
//	public static int getDiffDays(String fromDate, String toDate, boolean both) throws Exception{
//		return getDiffDays(getDate(fromDate), getDate(toDate), both);
//	}

	/**
	 * 시작일로부터 종료일까지의 일수를 한편넣기로 계산함.
	 * @param fromDate 시작일자
	 * @param toDate 종료일자
	 * @return 시작일자로 부터 종료일까지의 일수
	 * @deprecated 사용안함
	 */
//	public static int getDiffDays(String fromDate, String toDate) throws Exception{
//		return getDiffDays(getDate(fromDate), getDate(toDate), false);
//	}
	
	/**
	 * 날짜+시간을 java.sql.Timestamp으로 변환
	 * @param date 시작일자
	 * @return java.sql.Timestamp
	 * @deprecated DBMgr addParameter(Object) 에서 구현되어 불필요
	 */
//	public static java.sql.Timestamp toTimestamp(Date date){
//		return (null == date ? null: new java.sql.Timestamp(date.getTime()));
//	}
	
	/**
	 * 
	 */
//	public static Date convertAdapterToDate(String dateStr){
//		Date date = null;
//		if (checkDateFormat(dateStr, SEVEN_CALENDAR_DATE_TIME)){
//			date = convertToDate(dateStr, SEVEN_CALENDAR_DATE_TIME, LANG_EN);
//			
//		}else if (checkDateFormat(dateStr, SEVEN_CALENDAR_DATE_TIME2)){
//			date = convertToDate(dateStr, SEVEN_CALENDAR_DATE_TIME2, LANG_EN);
//			
//		}else if (checkDateFormat(dateStr, SEVEN_FORMAT_DATE_TIME)){
//			date = convertToDate(dateStr, SEVEN_FORMAT_DATE_TIME, LANG_EN);
//			
//		}else if (checkDateFormat(dateStr, PDA_DATE_TIME)){
//			date = convertToDate(dateStr, PDA_DATE_TIME, LANG_EN);
//			
//		}else if (checkDateFormat(dateStr, EVENT_FORMAT_DATE_TIME)) {
//			date = convertToDate(dateStr, EVENT_FORMAT_DATE_TIME, LANG_EN);
//			
//		}else if (checkDateFormat(dateStr, DBSYNC_FORMAT)) {
//			date = convertToDate(dateStr, DBSYNC_FORMAT, LANG_EN);
//			
//		}else{
//			date = new Date();
//		}
//		return date;
//	}
	
	/**
	 * RFC822 format(&quot;EEE, dd MMM yyyy HH:mm:ss z&quot;)을 
	 * java.util.Date 객체로 만들어 리턴
	 * <pre>
	 * Dependencies : None
	 * Side Effects : 문자열은 반드시 영문이어야 함
	 * </pre>
	 *
	 * @param formatRFC822
	 * @return 형식에 맞지않는 데이터가 들어오면 현재 날짜를 리턴한다.
	 * @see #convertRFC822ToDate(String, String)
	 */
	public static Date convertRFC822ToDate(String formatRFC822) {
		return convertRFC822ToDate(formatRFC822, "en");
	}
	
	/**
	 * RFC822 format(&quot;EEE, dd MMM yyyy HH:mm:ss z&quot;)을 
	 * java.util.Date 객체로 만들어 리턴
	 * <pre>
	 * Dependencies : None
	 * Side Effects : None
	 * </pre>
	 *
	 * @param formatRFC822 RFC 822 Date & Time Pattern
	 * @return 변환된 Date 객체
	 */
	public static Date convertRFC822ToDate(String formatRFC822, String language) {
		SimpleDateFormat sdf = new SimpleDateFormat(FORMAT_DATE_TIME
				, new Locale(language));
		
		Date date = null;
		try {
			date = sdf.parse(formatRFC822);
		} catch (Exception e) {
			date = new Date(); // today
		}
		
		return date;
	}
	
	/**
	 * 특정 패턴으로 포맷된 데이터를 default 형식으로 변환시킨다.<br>
	 * 만일 format이 안맞으면 시스템의 날짜를 리턴한다.
	 * <pre>
	 * Dependencies : None
	 * Side Effects : pattern에 TimeZone을 위해 'ZZ'가 패턴의 끝에 들어온 경우,
	 *                입력된 날짜형식의 문자열에서 타임존 부분의 콜론을 없애고 처리한다.
	 *                (예) textDate: 2007-04-16T11:23:00<b>+09:00</b>
	 *                     pattern: yyyy-MM-dd'T'HH:mm:ss<b>ZZ</b>
	 * </pre>
	 *
	 * @param textDate pattern이 적용된 날짜 문자열
	 * @param pattern 포맷된 데이터의 패턴
	 * @param language 포맷된 데이터의 언어
	 * @return default 형식
	 * @since 2007.04.20.
	 */
	public static String convertToDefault(String textDate, String pattern, String language) {
		SimpleDateFormat sdf = new SimpleDateFormat(pattern, new Locale(language));		
		try {
			if (pattern.endsWith("ZZ")) { // +09:00
				textDate = changeTextDate(textDate, pattern);
			}			
			Date date = sdf.parse(textDate);
			return convertDateToDefault(date);
		} catch (Exception e) {
			return convertDateToDefault(new Date());
		}		
	}
	
	/**
	 * 특정 패턴으로 포맷된 데이터를 {@link Date} 객체로 변환시킴<br>
	 * 만일 format이 안맞으면 시스템의 날짜를 리턴한다.
	 * <pre>
	 * Dependencies : None
	 * Side Effects : pattern에 TimeZone을 위해 'ZZ'가 패턴의 끝에 들어온 경우,
	 *                입력된 날짜형식의 문자열에서 타임존 부분의 콜론을 없애고 처리한다.
	 *                (예) textDate: 2007-04-16T11:23:00<b>+09:00</b>
	 *                     pattern: yyyy-MM-dd'T'HH:mm:ss<b>ZZ</b>
	 * </pre>
	 *
	 * @param textDate pattern이 적용된 날짜 문자열
	 * @param pattern 포맷된 데이터의 패턴
	 * @param language 포맷된 데이터의 언어
	 * @return java.util.Date 객체
	 */
	public static Date convertToDate(String textDate, String pattern
			, String language) {
		SimpleDateFormat sdf = new SimpleDateFormat(pattern);		
		try {
			textDate = changeTextDate(textDate, pattern);
			return sdf.parse(textDate);
		} catch (Exception e) {
			return new Date();
		}
	}
	
	/**
	 * 특정 패턴으로 포맷된 데이터를 {@link Date} 객체로 변환시킴<p>
	 * 만일 format이 안맞으면 defaultDate로 리턴을 한다.
	 * <pre>
	 * Dependencies : None
	 * Side Effects : pattern에 TimeZone을 위해 'ZZ'가 패턴의 끝에 들어온 경우,
	 *                입력된 날짜형식의 문자열에서 타임존 부분의 콜론을 없애고 처리한다.
	 *                (예) textDate: 2007-04-16T11:23:00<b>+09:00</b>
	 *                     pattern: yyyy-MM-dd'T'HH:mm:ss<b>ZZ</b>        
	 * </pre>
	 *
	 * @param textDate pattern이 적용된 날짜 문자열
	 * @param pattern 포맷된 데이터의 패턴
	 * @param language 포맷된 데이터의 언어
	 * @param defaultDate format이 안맞을경우 리턴할 데이터
	 * @return
	 */
	public static Date convertToDate(String textDate, String pattern
			, String language, Date defaultDate) {
		SimpleDateFormat sdf = new SimpleDateFormat(pattern, new Locale(language));		
		try {
			textDate = changeTextDate(textDate, pattern);
			return sdf.parse(textDate);
		} catch (Exception e) {
			return defaultDate;
		}
	}	
	
	/**
	 * 
	 * @param textDate
	 * @param pattern
	 * @return
	 * @deprecated
	 */
	public static String convertToString(String textDate, String pattern) {
		SimpleDateFormat sdf = new SimpleDateFormat(pattern);		
		try {
			textDate = changeTextDate(textDate, pattern);
			Date date = sdf.parse(textDate);
			return getDateString(date, pattern);
			
		} catch (Exception e) {
			return getDefaultDateString();
		}
		
	}
	
	public static String convertToString(String textDate, String fromPattern, 
			String toPattern) {
		SimpleDateFormat sdf = new SimpleDateFormat(fromPattern);
		Date date = null;
		String result = null;
		try {
			textDate = changeTextDate(textDate, fromPattern);
			date = sdf.parse(textDate);
			sdf = new SimpleDateFormat(toPattern);
			result = sdf.format(date);
		} catch (Exception e) {
			result = null;
		}
		return result;
	}
	/**
	 * 
	 * @param textDate
	 * @param pattern
	 * @param locale
	 * @deprecated
	 * @return
	 */
	public static String convertToString(String textDate, String pattern, Locale locale) {
		SimpleDateFormat sdf = new SimpleDateFormat(pattern, locale);		
		try {
			textDate = changeTextDate(textDate, pattern);
			Date date = sdf.parse(textDate);
			return getDateString(date, pattern);
			
		} catch (Exception e) {
			return getDefaultDateString();
		}
		
	}
	
	/**
	 * TimeZone format에 콜론(':')이 들어온 경우,<br>
	 * JAVA가 기본적으로 지원하지 않으므로 콜론을 없애준다.
	 * <pre>
	 * Dependencies : 특정 패턴을 가진 날짜형식의 문자열을 {@link Date} 형식으로 변환할 때,<br>
	 *                자바에서 지원되지 않는 형식을 처리하기 위함
	 * Side Effects : 맨 마지막의 콜론을 없앤다.
	 * </pre>
	 *
	 * @param textDate TimeZone영역에 콜론이 포함된 문자열
	 * @return 맨 마지막의 콜론을 뺀 문자열을 리턴
	 */
	public static String changeTextDate(String textDate, String pattern) {
		String result = null;
		if (pattern.endsWith("Z")){
			//zone 구분자인 + ,- 문자의 인덱스를 찾는다
			int zoneIndex = textDate.lastIndexOf("+");
			if (zoneIndex == -1){
				zoneIndex = textDate.lastIndexOf("-");
			}
			if (zoneIndex != -1){
				//+09:00 or +0900
				String zoneValue = textDate.substring(zoneIndex);
				int zoneColonIndex = zoneValue.lastIndexOf(':');
				if (zoneColonIndex != -1){
					int colonIndex = textDate.lastIndexOf(":");
					result = textDate.substring(0, colonIndex) + textDate.substring(colonIndex + 1);		
				}else{
					result = textDate;
				}
			}else{
				result = textDate;
			}
		}else{
			result = textDate;
		}
		return result;
	}
	
	
	/**
	 * 입력 문자열이 ISO 8601로 포맷된 데이터인지 확인한다.
	 * <pre>
	 * Dependencies : None
	 * Side Effects : None
	 * </pre>
	 *
	 * @param dateStr
	 * @return 형식에 맞으면 true, 그렇지 않으면 false를 리턴
	 * @since 2007.04.20.
	 */
	public static boolean checkDefaultFormat(String dateStr) {
		SimpleDateFormat sdf = new SimpleDateFormat(FORMAT_DATE_TIME
				, new Locale("en"));
		try {
			sdf.parse(dateStr);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
	/**
	 * 입력 문자열이 해당 pattern으로 된 데이터인지 확인한다.
	 * <pre>
	 * Dependencies : None
	 * Side Effects : None
	 * </pre>
	 *
	 * @param textDate pattern이 적용된 날짜 문자열
	 * @param pattern 포맷된 데이터의 패턴
	 * @param language 포맷된 데이터의 언어
	 * @return 형식에 맞으면 true, 그렇지 않으면 false를 리턴
	 */
	public static boolean checkDateFormat(String textDate, String pattern
			, Locale locale) {
		SimpleDateFormat sdf = new SimpleDateFormat(pattern, locale);
		try {
			textDate = changeTextDate(textDate, pattern);
			sdf.setLenient(false);
			sdf.parse(textDate);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
	public static boolean checkDateFormat(String textDate, String pattern) {
		SimpleDateFormat sdf = new SimpleDateFormat(pattern);
		try {
			textDate = changeTextDate(textDate, pattern);
			sdf.setLenient(true);
			sdf.parse(textDate);
			return true;
		} catch (Exception e) {
			return false;
		}
	}	

	
	
	/**
	 * 입력된 Date를 RFC822 문자열로 변환시킴
	 * <pre>
	 * Dependencies : None
	 * Side Effects : None
	 * </pre>
	 * 2007.04.20 변경.
	 * 
	 * @param date
	 * @return
	 * @deprecated  use {@link #convertDateToDefault(Date)}
	 */
//	public static String convertDateToGMT(Date date){
//		return convertDateToDefault(date);
//	}
	
	/**
	 * 입력된 Date를 디폴트 포맷인 RFC822 문자열로 변환시킴
	 * <pre>
	 * Dependencies : None
	 * Side Effects : 항상 영문으로 결과가 리턴됨
	 * </pre>
	 *
	 * @param date 변환할 java.util.Date 객체
	 * @return 포맷된 데이터
	 */
	public static String convertDateToDefault(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat(FORMAT_DATE_TIME
				, new Locale("en"));
		return sdf.format(date);
	}
	
	/**
	 * 입력된 long 형의 Date를 디폴트 포맷으로 변환시킴
	 * @param dateTime
	 * @return
	 */
	public static String convertDateToDefault(long dateTime) {
		SimpleDateFormat sdf = new SimpleDateFormat(FORMAT_DATE_TIME
				, new Locale("en"));
		return sdf.format(new Date(dateTime));
	}
	
	/**
	 * 입력된 Date를 GMT 시간에 해당하는 pattern으로 변경시켜 리턴
	 * <pre>
	 * Dependencies : None
	 * Side Effects : None
	 * </pre>
	 *
	 * @param date 변환할 java.util.Date 객체
	 * @param pattern 변경을 원하는 패턴
	 * @return pattern으로 변경된 GMT 문자열 
	 */
	public static String convertToGMT(Date date, String pattern) {
		SimpleDateFormat sdf = new SimpleDateFormat(pattern);
		sdf.setTimeZone(TimeZone.getTimeZone("GMT"));
		return sdf.format(date);
	}
	
	/**
	 * GMT시간을 로컬타임으로 반환한다
	 * <pre>
	 * Dependencies : None
	 * Side Effects : None
	 * </pre>
	 * @deprecated
	 * @param gmt
	 * @return
	 */
//	public static Date convertGMTtoLocalTime(String gmt){
//		java.util.Date local = null;
//		
//		gmt = gmt + " GMT";		
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss z");
//		
//		try {
//			local = sdf.parse(gmt);
//		} catch (Exception e){
//			local = new Date(0);
//		}
//		
//		return local;
//	}
	
	/**
	 * 현재 시스템의 시간을 디폴트 포맷으로 변경시킴
	 * <pre>
	 * Dependencies : None
	 * Side Effects : None
	 * </pre>
	 *
	 * @return 14자리 format
	 * @see #FORMAT_DATE_TIME
	 * @deprecated use {@link #getDefaultDateString()}
	 */
//	public static String getGMTString() {
//		return convertDateToDefault(new Date());
//	}
	
	/**
	 * 현재 시스템의 시간을 디폴트 포맷으로 변경시킴
	 * <pre>
	 * Dependencies : None
	 * Side Effects : None
	 * </pre>
	 *
	 * @return
	 * @since 2007.04.20
	 */
	public static String getDefaultDateString() {
		return convertDateToDefault(new Date());
	}
	
	/**
	 * 인자로 받은 Date 디폴트 포맷으로 변경시킴
	 * <pre>
	 * Dependencies : None
	 * Side Effects : None
	 * </pre>
	 *
	 * @return
	 * @since 2007.04.20
	 */
	public static String getDefaultDateString(Date date) {
		return convertDateToDefault(date);
	}
	
	/**
	 * 현재 시스템의 시각중 시(hour) 정보를 24시간 형식으로 리턴한다.
	 * <pre>
	 * Dependencies : None
	 * Side Effects : None
	 * </pre>
	 *
	 * @return 현재 시(current hour)
	 */
	public static int getCurrentHour() {
		Calendar calendar = Calendar.getInstance();		
		return calendar.get(Calendar.HOUR_OF_DAY);
	}
	
	/**
	 * 현재 시스템의 시각중 분(minute) 정보를 리턴한다.
	 * <pre>
	 * Dependencies : None
	 * Side Effects : None
	 * </pre>
	 *
	 * @return 현재 분(current minute)
	 */
	public static int getCurrentMinute() {
		Calendar calendar = Calendar.getInstance();		
		return calendar.get(Calendar.MINUTE);		
	}
	
	/**
	 * 현재 날짜를 기준으로 amount만큼 날짜를 더하거나 뺀다.
	 * <pre>
	 * Dependencies : None
	 * Side Effects : None
	 * </pre>
	 *
	 * @param amount 더하거나 차감할 일수
	 * @return 값이 음수(minus)이면 현재보다 이전의 날짜를,<br>
	 *                   양수이면 현재보다 이후의 날짜를 리턴
	 */
	public static Date addDate(int amount) {
//		Calendar calendar = Calendar.getInstance();	
//		calendar.add(Calendar.DAY_OF_MONTH, amount);
//		if (amount <= 0) {
//			calendar.set(Calendar.HOUR_OF_DAY, 0);
//			calendar.set(Calendar.MINUTE, 0);
//			calendar.set(Calendar.SECOND, 0);
//		} else {
//			calendar.set(Calendar.HOUR_OF_DAY, 23);
//			calendar.set(Calendar.MINUTE, 59);
//			calendar.set(Calendar.SECOND, 59);		
//		}
//		return calendar.getTime();
		return DateUtil.addDate(null, amount);
	}
	
	public static Date addDate(Date date, int amount) {
		Calendar calendar = Calendar.getInstance();	
		if (date != null) {
			calendar.setTime(date);
		}
		calendar.add(Calendar.DAY_OF_MONTH, amount);
		if (amount <= 0) {
			calendar.set(Calendar.HOUR_OF_DAY, 0);
			calendar.set(Calendar.MINUTE, 0);
			calendar.set(Calendar.SECOND, 0);
			calendar.set(Calendar.MILLISECOND, 0);
		} else {
			calendar.set(Calendar.HOUR_OF_DAY, 23);
			calendar.set(Calendar.MINUTE, 59);
			calendar.set(Calendar.SECOND, 59);
			calendar.set(Calendar.MILLISECOND, 999);
		}
		return calendar.getTime();		
	}
	
	/**
	 * 입력된 Date 객체의 시간을 23시 59분 59초로 맞춘다.
	 * <pre>
	 * Dependencies : None
	 * Side Effects : None
	 * </pre>
	 *
	 * @param date 변경하고자 하는 Date 객체
	 * @return 입력된 Date 객체의 시간을 23시 59분 59초로 바꾸어 리턴
	 */
	public static Date getLastTime(Date date) {
		Calendar calendar = Calendar.getInstance();	
		calendar.setTime(date);
		calendar.set(Calendar.HOUR_OF_DAY, 23);
		calendar.set(Calendar.MINUTE, 59);
		calendar.set(Calendar.SECOND, 59);	
		calendar.set(Calendar.MILLISECOND, 999);	
		return calendar.getTime();
	}
	
	/**
	 * 주어진 날짜 구간을 입력된 days만큼씩 배열에 담아 리턴한다.
	 * <pre>
	 * Dependencies : 2차원 두번째 길이는 항상 2이다.(from and to)
	 * Side Effects : toDate가 fromDate보다 크다는 조건 체크안함.
	 * </pre>
	 *
	 * @param fromDate 시작날짜
	 * @param toDate 끝날짜
	 * @param days 나눌 일수
	 * @return 주어진 구간을 days만큼 Date의 2차원 배열에 담아 리턴한다.<br>
	 */
	public static Date[][] devideRange(Date fromDate, Date toDate, int days) {
		int diffDays = DateUtil.diffDays(fromDate, toDate, true);
		int size = (int)diffDays / days;
		if (diffDays % days > 0 || size == 0) {
			size++;
		} 
		
		Date tempDate = fromDate;
		Date [][]dates = new Date[size][2];
		for (int i = 0; ; i++) {
			if (i == 0) {
				dates[i][0] = tempDate;
				tempDate = DateUtil.addDate(tempDate, days - 1);
			} else {
				Calendar cal = Calendar.getInstance();
				cal.setTime(tempDate);
				cal.add(Calendar.MILLISECOND, 1);
				dates[i][0] = cal.getTime();
				tempDate = DateUtil.addDate(tempDate, days);
			}
			
			if (tempDate.getTime() < toDate.getTime()) {
				dates[i][1] = tempDate;
			} else {
				dates[i][1] = toDate;
				break;
			}
		} 
		
		return dates;
	}
	
	/**
	 * 한편넣기/양편넣기 계산.
	 *
	 * @param fromDate 시작일짜
	 * @param toDate 끝날짜.
	 * @param both 양편넣기
	 * @return 주어진 구간의 날짜가 몇일인지 계산
	 */
	public static int diffDays(Date fromDate, Date toDate, boolean both) {
		long diff = toDate.getTime() - fromDate.getTime();
		int diffDays = (int)(diff / (24 * 60 * 60 * 1000));
		return both ? (diffDays + 1) : diffDays;
	}

	/**
	 * timezone 값을 리턴한다. 
	 * @param dateStr
	 * @return	GMT+9 형태 디폴트 값: GMT+9 
	 */
	public static String getTimeZone(String dateStr) {
		String timeZone = "GMT+9";
		if (checkDefaultFormat(dateStr)){
			timeZone = "GMT" + dateStr.substring(19, 22);
		}
		return timeZone;
	}
	
	public static String getLocalDate(String dateStr) {
		if (StringUtils.isNotEmpty(dateStr)) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
			
			Calendar c = Calendar.getInstance();
			try {
				c.setTime(sdf.parse(dateStr));
			} catch (ParseException e) {
				return "";
 			}
			c.add(Calendar.HOUR, 8);
			String date = sdf.format(c.getTime()).replace("T", " ");
			return date;
		}
		return "";
	}

//	public static String getTodayStartByMailhost(String today, String mailhost){
//		try {
//			SimpleDateFormat sdf = new SimpleDateFormat(DateUtil.FORMAT_DATE);
//			
//			String id = "GMT+9";
//			if (PEMGlobal.EUMailhost.contains(mailhost)) {
//				id = "GMT+0";
//				sdf.setTimeZone(TimeZone.getTimeZone(id));
//			}else if(PEMGlobal.USAMailhost.contains(mailhost)) {
//				id = "GMT-5";
//				sdf.setTimeZone(TimeZone.getTimeZone(id));
//			}
//			return DateUtil.getDefaultDateString(sdf.parse(today));
//		}catch(Exception e) {
//			return today+"T00:00:00+09:00";
//		}
//	}
}
