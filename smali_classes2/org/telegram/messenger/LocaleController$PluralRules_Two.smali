.class public Lorg/telegram/messenger/LocaleController$PluralRules_Two;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Two"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1813
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .registers 4
    .param p1, "count"    # I

    .prologue
    const/4 v0, 0x2

    .line 1815
    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    .line 1820
    :goto_4
    return v0

    .line 1817
    :cond_5
    if-ne p1, v0, :cond_9

    .line 1818
    const/4 v0, 0x4

    goto :goto_4

    .line 1820
    :cond_9
    const/4 v0, 0x0

    goto :goto_4
.end method
