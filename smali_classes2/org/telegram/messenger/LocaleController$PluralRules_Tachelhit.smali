.class public Lorg/telegram/messenger/LocaleController$PluralRules_Tachelhit;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Tachelhit"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1825
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .registers 4
    .param p1, "count"    # I

    .prologue
    const/4 v0, 0x2

    .line 1827
    if-ltz p1, :cond_7

    const/4 v1, 0x1

    if-gt p1, v1, :cond_7

    .line 1832
    :goto_6
    return v0

    .line 1829
    :cond_7
    if-lt p1, v0, :cond_10

    const/16 v0, 0xa

    if-gt p1, v0, :cond_10

    .line 1830
    const/16 v0, 0x8

    goto :goto_6

    .line 1832
    :cond_10
    const/4 v0, 0x0

    goto :goto_6
.end method
