.class public Lorg/telegram/messenger/LocaleController$PluralRules_Arabic;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Arabic"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2010
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .registers 5
    .param p1, "count"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2012
    rem-int/lit8 v0, p1, 0x64

    .line 2013
    .local v0, "rem100":I
    if-nez p1, :cond_7

    .line 2024
    :goto_6
    return v1

    .line 2015
    :cond_7
    if-ne p1, v1, :cond_b

    move v1, v2

    .line 2016
    goto :goto_6

    .line 2017
    :cond_b
    if-ne p1, v2, :cond_f

    .line 2018
    const/4 v1, 0x4

    goto :goto_6

    .line 2019
    :cond_f
    const/4 v1, 0x3

    if-lt v0, v1, :cond_19

    const/16 v1, 0xa

    if-gt v0, v1, :cond_19

    .line 2020
    const/16 v1, 0x8

    goto :goto_6

    .line 2021
    :cond_19
    const/16 v1, 0xb

    if-lt v0, v1, :cond_24

    const/16 v1, 0x63

    if-gt v0, v1, :cond_24

    .line 2022
    const/16 v1, 0x10

    goto :goto_6

    .line 2024
    :cond_24
    const/4 v1, 0x0

    goto :goto_6
.end method
