.class Lorg/telegram/messenger/SendMessagesHelper$17$1$1;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$17$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SendMessagesHelper$17$1;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$17$1;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/messenger/SendMessagesHelper$17$1;

    .prologue
    .line 4398
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$17$1$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$17$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v4, 0x0

    .line 4401
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$17$1$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$17$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$17$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$17;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$17;->val$text:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper;->access$1100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4402
    .local v12, "textFinal":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_49

    .line 4403
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x45800000    # 4096.0f

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v11, v2

    .line 4404
    .local v11, "count":I
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_20
    if-ge v10, v11, :cond_49

    .line 4405
    mul-int/lit16 v0, v10, 0x1000

    add-int/lit8 v2, v10, 0x1

    mul-int/lit16 v2, v2, 0x1000

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v12, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4406
    .local v1, "mess":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$17$1$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$17$1;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$17$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$17;

    iget-wide v2, v2, Lorg/telegram/messenger/SendMessagesHelper$17;->val$dialog_id:J

    const/4 v6, 0x1

    move-object v5, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 4404
    add-int/lit8 v10, v10, 0x1

    goto :goto_20

    .line 4409
    .end local v1    # "mess":Ljava/lang/String;
    .end local v10    # "a":I
    .end local v11    # "count":I
    :cond_49
    return-void
.end method
