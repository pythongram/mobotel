.class public final Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;
.super Ljava/lang/Object;
.source "SpliceInsertCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComponentSplice"
.end annotation


# instance fields
.field public final componentSplicePts:J

.field public final componentTag:I


# direct methods
.method private constructor <init>(IJ)V
    .registers 4
    .param p1, "componentTag"    # I
    .param p2, "componentSplicePts"    # J

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;->componentTag:I

    .line 142
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;->componentSplicePts:J

    .line 143
    return-void
.end method

.method synthetic constructor <init>(IJLorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$1;)V
    .registers 5
    .param p1, "x0"    # I
    .param p2, "x1"    # J
    .param p4, "x2"    # Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$1;

    .prologue
    .line 135
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;-><init>(IJ)V

    return-void
.end method

.method public static createFromParcel(Landroid/os/Parcel;)Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;
    .registers 5
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 151
    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;-><init>(IJ)V

    return-object v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;

    .prologue
    .line 146
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;->componentTag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;->componentSplicePts:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 148
    return-void
.end method
