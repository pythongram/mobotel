.class public Lorg/telegram/messenger/LocaleController$PluralRules_Zero;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Zero"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1785
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .registers 3
    .param p1, "count"    # I

    .prologue
    .line 1787
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 1788
    :cond_5
    const/4 v0, 0x2

    .line 1790
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method
