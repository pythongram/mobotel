.class public Lorg/telegram/messenger/LocaleController$PluralRules_French;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_French"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1954
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .registers 3
    .param p1, "count"    # I

    .prologue
    const/4 v0, 0x2

    .line 1956
    if-ltz p1, :cond_6

    if-ge p1, v0, :cond_6

    .line 1959
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
