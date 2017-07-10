.class Lorg/telegram/messenger/MediaController$26$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController$26;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MediaController$26;

.field final synthetic val$finalBuffer:Ljava/nio/ByteBuffer;

.field final synthetic val$z:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController$26;Ljava/nio/ByteBuffer;Z)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/messenger/MediaController$26;

    .prologue
    .line 4301
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$26$1;->this$1:Lorg/telegram/messenger/MediaController$26;

    iput-object p2, p0, Lorg/telegram/messenger/MediaController$26$1;->val$finalBuffer:Ljava/nio/ByteBuffer;

    iput-boolean p3, p0, Lorg/telegram/messenger/MediaController$26$1;->val$z:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 4303
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$26$1;->val$finalBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 4305
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$26$1;->val$finalBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$26$1;->this$1:Lorg/telegram/messenger/MediaController$26;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_bd

    .line 4306
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$26$1;->val$finalBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 4307
    .local v0, "limit":I
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$26$1;->val$finalBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$26$1;->this$1:Lorg/telegram/messenger/MediaController$26;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/messenger/MediaController$26$1;->val$finalBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 4311
    :goto_3a
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$26$1;->this$1:Lorg/telegram/messenger/MediaController$26;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$26$1;->val$finalBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 4312
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$26$1;->this$1:Lorg/telegram/messenger/MediaController$26;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$26$1;->this$1:Lorg/telegram/messenger/MediaController$26;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-eq v1, v2, :cond_65

    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController$26$1;->val$z:Z

    if-eqz v1, :cond_b3

    .line 4313
    :cond_65
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$26$1;->this$1:Lorg/telegram/messenger/MediaController$26;

    iget-object v2, v1, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$26$1;->this$1:Lorg/telegram/messenger/MediaController$26;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController$26$1;->val$z:Z

    if-nez v1, :cond_c0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$26$1;->this$1:Lorg/telegram/messenger/MediaController$26;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    :goto_81
    invoke-static {v2, v3, v1}, Lorg/telegram/messenger/MediaController;->access$600(Lorg/telegram/messenger/MediaController;Ljava/nio/ByteBuffer;I)I

    move-result v1

    if-eqz v1, :cond_b3

    .line 4314
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$26$1;->this$1:Lorg/telegram/messenger/MediaController$26;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 4315
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$26$1;->this$1:Lorg/telegram/messenger/MediaController$26;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$26$1;->this$1:Lorg/telegram/messenger/MediaController$26;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$700(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$26$1;->this$1:Lorg/telegram/messenger/MediaController$26;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$26;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x10

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/MediaController;->access$702(Lorg/telegram/messenger/MediaController;J)J

    .line 4318
    :cond_b3
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4319
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$26$1;->val$finalBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 4309
    .end local v0    # "limit":I
    :cond_bd
    const/4 v0, -0x1

    .restart local v0    # "limit":I
    goto/16 :goto_3a

    .line 4313
    :cond_c0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$26$1;->val$finalBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    goto :goto_81

    .line 4322
    .end local v0    # "limit":I
    :cond_c7
    return-void
.end method
