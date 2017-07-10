.class public Lorg/telegram/messenger/LocaleController$PluralRules_Welsh;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Welsh"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1795
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

    .line 1797
    if-nez p1, :cond_5

    .line 1808
    :goto_4
    return v0

    .line 1799
    :cond_5
    if-ne p1, v0, :cond_9

    move v0, v1

    .line 1800
    goto :goto_4

    .line 1801
    :cond_9
    if-ne p1, v1, :cond_d

    .line 1802
    const/4 v0, 0x4

    goto :goto_4

    .line 1803
    :cond_d
    const/4 v0, 0x3

    if-ne p1, v0, :cond_13

    .line 1804
    const/16 v0, 0x8

    goto :goto_4

    .line 1805
    :cond_13
    const/4 v0, 0x6

    if-ne p1, v0, :cond_19

    .line 1806
    const/16 v0, 0x10

    goto :goto_4

    .line 1808
    :cond_19
    const/4 v0, 0x0

    goto :goto_4
.end method
