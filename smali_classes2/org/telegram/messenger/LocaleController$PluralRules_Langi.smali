.class public Lorg/telegram/messenger/LocaleController$PluralRules_Langi;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Langi"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1942
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .registers 3
    .param p1, "count"    # I

    .prologue
    const/4 v0, 0x2

    .line 1944
    if-nez p1, :cond_5

    .line 1945
    const/4 v0, 0x1

    .line 1949
    :cond_4
    :goto_4
    return v0

    .line 1946
    :cond_5
    if-lez p1, :cond_9

    if-lt p1, v0, :cond_4

    .line 1949
    :cond_9
    const/4 v0, 0x0

    goto :goto_4
.end method
