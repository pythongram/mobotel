.class final Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$1;
.super Ljava/lang/Object;
.source "Mp3Extractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createExtractors()[Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    .registers 4

    .prologue
    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    const/4 v1, 0x0

    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;

    invoke-direct {v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;-><init>()V

    aput-object v2, v0, v1

    return-object v0
.end method
