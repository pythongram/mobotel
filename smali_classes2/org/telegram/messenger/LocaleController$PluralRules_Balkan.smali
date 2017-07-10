.class public Lorg/telegram/messenger/LocaleController$PluralRules_Balkan;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Balkan"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1994
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .registers 8
    .param p1, "count"    # I

    .prologue
    const/16 v5, 0xe

    const/16 v4, 0xb

    const/4 v2, 0x2

    .line 1996
    rem-int/lit8 v1, p1, 0x64

    .line 1997
    .local v1, "rem100":I
    rem-int/lit8 v0, p1, 0xa

    .line 1998
    .local v0, "rem10":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_f

    if-eq v1, v4, :cond_f

    .line 2005
    :goto_e
    return v2

    .line 2000
    :cond_f
    if-lt v0, v2, :cond_1d

    const/4 v2, 0x4

    if-gt v0, v2, :cond_1d

    const/16 v2, 0xc

    if-lt v1, v2, :cond_1a

    if-le v1, v5, :cond_1d

    .line 2001
    :cond_1a
    const/16 v2, 0x8

    goto :goto_e

    .line 2002
    :cond_1d
    if-eqz v0, :cond_2a

    const/4 v2, 0x5

    if-lt v0, v2, :cond_26

    const/16 v2, 0x9

    if-le v0, v2, :cond_2a

    :cond_26
    if-lt v1, v4, :cond_2d

    if-gt v1, v5, :cond_2d

    .line 2003
    :cond_2a
    const/16 v2, 0x10

    goto :goto_e

    .line 2005
    :cond_2d
    const/4 v2, 0x0

    goto :goto_e
.end method
