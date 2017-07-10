.class public Lorg/telegram/messenger/LocaleController$PluralRules_Lithuanian;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Lithuanian"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1916
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .registers 8
    .param p1, "count"    # I

    .prologue
    const/16 v5, 0x13

    const/16 v4, 0xb

    const/4 v2, 0x2

    .line 1918
    rem-int/lit8 v1, p1, 0x64

    .line 1919
    .local v1, "rem100":I
    rem-int/lit8 v0, p1, 0xa

    .line 1920
    .local v0, "rem10":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_11

    if-lt v1, v4, :cond_10

    if-le v1, v5, :cond_11

    .line 1925
    :cond_10
    :goto_10
    return v2

    .line 1922
    :cond_11
    if-lt v0, v2, :cond_1e

    const/16 v2, 0x9

    if-gt v0, v2, :cond_1e

    if-lt v1, v4, :cond_1b

    if-le v1, v5, :cond_1e

    .line 1923
    :cond_1b
    const/16 v2, 0x8

    goto :goto_10

    .line 1925
    :cond_1e
    const/4 v2, 0x0

    goto :goto_10
.end method
