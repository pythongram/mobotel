.class final Lorg/telegram/messenger/time/FastDateParser$2;
.super Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "field"    # I

    .prologue
    .line 844
    invoke-direct {p0, p1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    return-void
.end method


# virtual methods
.method modify(I)I
    .registers 3
    .param p1, "iValue"    # I

    .prologue
    .line 847
    add-int/lit8 v0, p1, -0x1

    return v0
.end method
