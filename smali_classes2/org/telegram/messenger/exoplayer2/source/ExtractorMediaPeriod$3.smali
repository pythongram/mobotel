.class Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$3;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

.field final synthetic val$extractorHolder:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    .prologue
    .line 142
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$3;->this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$3;->val$extractorHolder:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 145
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$3;->val$extractorHolder:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->release()V

    .line 146
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$3;->this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    # getter for: Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->access$300(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 147
    .local v1, "trackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    if-ge v0, v1, :cond_24

    .line 148
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$3;->this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    # getter for: Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->access$300(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->disable()V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 150
    :cond_24
    return-void
.end method
