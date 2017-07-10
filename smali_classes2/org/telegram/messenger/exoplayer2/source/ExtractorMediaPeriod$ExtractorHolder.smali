.class final Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtractorHolder"
.end annotation


# instance fields
.field private extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

.field private final extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

.field private final extractors:[Lorg/telegram/messenger/exoplayer2/extractor/Extractor;


# direct methods
.method public constructor <init>([Lorg/telegram/messenger/exoplayer2/extractor/Extractor;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;)V
    .registers 3
    .param p1, "extractors"    # [Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    .param p2, "extractorOutput"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    .prologue
    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractors:[Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 665
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    .line 666
    return-void
.end method


# virtual methods
.method public release()V
    .registers 2

    .prologue
    .line 704
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    if-eqz v0, :cond_c

    .line 705
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;->release()V

    .line 706
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 708
    :cond_c
    return-void
.end method

.method public selectExtractor(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    .registers 7
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 681
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    if-eqz v1, :cond_7

    .line 682
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 700
    :goto_6
    return-object v1

    .line 684
    :cond_7
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractors:[Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v3, :cond_1a

    aget-object v0, v2, v1

    .line 686
    .local v0, "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :try_start_f
    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;->sniff(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 687
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :try_end_17
    .catch Ljava/io/EOFException; {:try_start_f .. :try_end_17} :catch_2c
    .catchall {:try_start_f .. :try_end_17} :catchall_31

    .line 693
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 696
    .end local v0    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :cond_1a
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    if-nez v1, :cond_36

    .line 697
    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$UnrecognizedInputFormatException;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractors:[Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$UnrecognizedInputFormatException;-><init>([Lorg/telegram/messenger/exoplayer2/extractor/Extractor;)V

    throw v1

    .line 693
    .restart local v0    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :cond_26
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 684
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 690
    :catch_2c
    move-exception v4

    .line 693
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_29

    :catchall_31
    move-exception v1

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    throw v1

    .line 699
    .end local v0    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :cond_36
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;->init(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;)V

    .line 700
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    goto :goto_6
.end method
