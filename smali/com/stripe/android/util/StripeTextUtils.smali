.class public Lcom/stripe/android/util/StripeTextUtils;
.super Ljava/lang/Object;
.source "StripeTextUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asCardBrand(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "possibleCardType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 92
    invoke-static {p0}, Lcom/stripe/android/util/StripeTextUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 93
    const/4 v0, 0x0

    .line 109
    :goto_7
    return-object v0

    .line 96
    :cond_8
    const-string v0, "American Express"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 97
    const-string v0, "American Express"

    goto :goto_7

    .line 98
    :cond_13
    const-string v0, "MasterCard"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 99
    const-string v0, "MasterCard"

    goto :goto_7

    .line 100
    :cond_1e
    const-string v0, "Diners Club"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 101
    const-string v0, "Diners Club"

    goto :goto_7

    .line 102
    :cond_29
    const-string v0, "Discover"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 103
    const-string v0, "Discover"

    goto :goto_7

    .line 104
    :cond_34
    const-string v0, "JCB"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 105
    const-string v0, "JCB"

    goto :goto_7

    .line 106
    :cond_3f
    const-string v0, "Visa"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 107
    const-string v0, "Visa"

    goto :goto_7

    .line 109
    :cond_4a
    const-string v0, "Unknown"

    goto :goto_7
.end method

.method public static asFundingType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "possibleFundingType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 122
    invoke-static {p0}, Lcom/stripe/android/util/StripeTextUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 123
    const/4 v0, 0x0

    .line 133
    :goto_7
    return-object v0

    .line 126
    :cond_8
    const-string v0, "credit"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 127
    const-string v0, "credit"

    goto :goto_7

    .line 128
    :cond_13
    const-string v0, "debit"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 129
    const-string v0, "debit"

    goto :goto_7

    .line 130
    :cond_1e
    const-string v0, "prepaid"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 131
    const-string v0, "prepaid"

    goto :goto_7

    .line 133
    :cond_29
    const-string v0, "unknown"

    goto :goto_7
.end method

.method public static asTokenType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "possibleTokenType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 147
    const-string v0, "card"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 148
    const-string v0, "card"

    .line 150
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static varargs hasAnyPrefix(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "prefixes"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 25
    if-nez p0, :cond_4

    .line 34
    :cond_3
    :goto_3
    return v1

    .line 29
    :cond_4
    array-length v3, p1

    move v2, v1

    :goto_6
    if-ge v2, v3, :cond_3

    aget-object v0, p1, v2

    .line 30
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 31
    const/4 v1, 0x1

    goto :goto_3

    .line 29
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .registers 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 80
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isWholePositiveNumber(Ljava/lang/String;)Z
    .registers 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 44
    if-nez p0, :cond_4

    .line 55
    :cond_3
    :goto_3
    return v1

    .line 50
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_18

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 55
    :cond_18
    const/4 v1, 0x1

    goto :goto_3
.end method

.method public static nullIfBlank(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/stripe/android/util/StripeTextUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 66
    const/4 p0, 0x0

    .line 68
    .end local p0    # "value":Ljava/lang/String;
    :cond_7
    return-object p0
.end method
