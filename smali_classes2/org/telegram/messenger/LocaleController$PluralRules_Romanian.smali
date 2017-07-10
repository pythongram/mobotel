.class public Lorg/telegram/messenger/LocaleController$PluralRules_Romanian;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Romanian"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1852
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .registers 4
    .param p1, "count"    # I

    .prologue
    const/4 v1, 0x1

    .line 1854
    rem-int/lit8 v0, p1, 0x64

    .line 1855
    .local v0, "rem100":I
    if-ne p1, v1, :cond_7

    .line 1856
    const/4 v1, 0x2

    .line 1860
    :goto_6
    return v1

    .line 1857
    :cond_7
    if-eqz p1, :cond_f

    if-lt v0, v1, :cond_12

    const/16 v1, 0x13

    if-gt v0, v1, :cond_12

    .line 1858
    :cond_f
    const/16 v1, 0x8

    goto :goto_6

    .line 1860
    :cond_12
    const/4 v1, 0x0

    goto :goto_6
.end method
