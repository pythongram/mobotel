.class final Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StsdData"
.end annotation


# instance fields
.field public format:Lorg/telegram/messenger/exoplayer2/Format;

.field public nalUnitLengthFieldLength:I

.field public requiredSampleTransformation:I

.field public final trackEncryptionBoxes:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "numberOfEntries"    # I

    .prologue
    .line 1173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1174
    new-array v0, p1, [Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 1175
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    .line 1176
    return-void
.end method
