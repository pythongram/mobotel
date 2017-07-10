.class public Lorg/telegram/messenger/LocaleController$PluralRules_Slovenian;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Slovenian"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1837
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .registers 6
    .param p1, "count"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 1839
    rem-int/lit8 v0, p1, 0x64

    .line 1840
    .local v0, "rem100":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_8

    .line 1847
    :goto_7
    return v1

    .line 1842
    :cond_8
    if-ne v0, v1, :cond_c

    move v1, v2

    .line 1843
    goto :goto_7

    .line 1844
    :cond_c
    const/4 v1, 0x3

    if-lt v0, v1, :cond_14

    if-gt v0, v2, :cond_14

    .line 1845
    const/16 v1, 0x8

    goto :goto_7

    .line 1847
    :cond_14
    const/4 v1, 0x0

    goto :goto_7
.end method
