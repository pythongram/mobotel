.class public Lorg/telegram/messenger/LocaleController$PluralRules_Breton;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Breton"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1976
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .registers 4
    .param p1, "count"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 1978
    if-nez p1, :cond_5

    .line 1989
    :goto_4
    return v0

    .line 1980
    :cond_5
    if-ne p1, v0, :cond_9

    move v0, v1

    .line 1981
    goto :goto_4

    .line 1982
    :cond_9
    if-ne p1, v1, :cond_d

    .line 1983
    const/4 v0, 0x4

    goto :goto_4

    .line 1984
    :cond_d
    const/4 v0, 0x3

    if-ne p1, v0, :cond_13

    .line 1985
    const/16 v0, 0x8

    goto :goto_4

    .line 1986
    :cond_13
    const/4 v0, 0x6

    if-ne p1, v0, :cond_19

    .line 1987
    const/16 v0, 0x10

    goto :goto_4

    .line 1989
    :cond_19
    const/4 v0, 0x0

    goto :goto_4
.end method
