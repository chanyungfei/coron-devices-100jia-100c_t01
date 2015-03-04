.class public Landroid/telephony/baiyi_extends/phonenumber/BaiyiPhoneNumberUtils;
.super Landroid/telephony/PhoneNumberUtils;
.source "BaiyiPhoneNumberUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/telephony/PhoneNumberUtils;-><init>()V

    return-void
.end method

.method private static areEqual(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .locals 4
    .parameter "charsequence1"
    .parameter "startindex1"
    .parameter "charsequence2"
    .parameter "startindex2"
    .parameter "len"

    .prologue
    const/4 v1, 0x0

    .line 14
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-ltz p1, :cond_0

    if-ltz p3, :cond_0

    if-gez p4, :cond_1

    .line 26
    :cond_0
    :goto_0
    return v1

    .line 17
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int v3, p1, p4

    if-lt v2, v3, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int v3, p3, p4

    if-lt v2, v3, :cond_0

    .line 20
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p4, :cond_2

    .line 22
    add-int v2, p1, v0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int v3, p3, v0

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 26
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static extractNationalNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "originPhonenumber"

    .prologue
    const/4 v5, 0x0

    .line 31
    invoke-static {p0}, Landroid/telephony/baiyi_extends/phonenumber/BaiyiPhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/baiyi_extends/phonenumber/BaiyiPhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, phonenumber:Ljava/lang/String;
    const-string v3, "+"

    .line 33
    .local v3, s:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v5, v3, v5, v4}, Landroid/telephony/baiyi_extends/phonenumber/BaiyiPhoneNumberUtils;->areEqual(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 34
    invoke-static {}, Landroid/telephony/baiyi_extends/phonenumber/CountryCode;->getIddCode()Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v5, v3, v5, v4}, Landroid/telephony/baiyi_extends/phonenumber/BaiyiPhoneNumberUtils;->areEqual(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 36
    const/4 v3, 0x0

    .line 39
    :cond_0
    if-eqz v3, :cond_1

    .line 40
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 41
    .local v1, effectiveNumberStart:I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-static {v4, v1, v5}, Landroid/telephony/baiyi_extends/phonenumber/CountryCode;->parse(Ljava/lang/StringBuffer;II)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, countryCode:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 44
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v1, v4

    .line 48
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 50
    .end local v0           #countryCode:Ljava/lang/String;
    .end local v1           #effectiveNumberStart:I
    .end local v2           #phonenumber:Ljava/lang/String;
    :cond_1
    return-object v2

    .line 46
    .restart local v0       #countryCode:Ljava/lang/String;
    .restart local v1       #effectiveNumberStart:I
    .restart local v2       #phonenumber:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0
.end method
