.class Lorg/telegram/ui/ChatActivity$60;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->processSelectedAttach(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 4158
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$60;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectPhotos(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$InputDocument;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "masks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;>;"
    .local p4, "webPhotos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 4161
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$60;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$60;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    move-object v0, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, v1

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhotos(Ljava/util/ArrayList;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V

    .line 4162
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$60;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$60;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-static {p4, v2, v3, v0}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhotosSearch(Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;)V

    .line 4163
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$60;->this$0:Lorg/telegram/ui/ChatActivity;

    move v3, v8

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ChatActivity;->showReplyPanel(ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$WebPage;Z)V

    .line 4164
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$60;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    .line 4165
    return-void
.end method

.method public didSelectVideo(Ljava/lang/String;Lorg/telegram/messenger/VideoEditedInfo;JJLjava/lang/String;)V
    .registers 21
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "info"    # Lorg/telegram/messenger/VideoEditedInfo;
    .param p3, "estimatedSize"    # J
    .param p5, "estimatedDuration"    # J
    .param p7, "caption"    # Ljava/lang/String;

    .prologue
    .line 4188
    if-eqz p2, :cond_32

    .line 4189
    iget v6, p2, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    iget v7, p2, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$60;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v9

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$60;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v11

    move-object v1, p1

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-object v8, p2

    move-object/from16 v12, p7

    invoke-static/range {v1 .. v12}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingVideo(Ljava/lang/String;JJIILorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    .line 4193
    :goto_1d
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$60;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->showReplyPanel(ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$WebPage;Z)V

    .line 4194
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$60;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    .line 4195
    return-void

    .line 4191
    :cond_32
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$60;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v9

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$60;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v11

    const/4 v12, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v12}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingVideo(Ljava/lang/String;JJIILorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public startPhotoSelectActivity()V
    .registers 9

    .prologue
    .line 4170
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 4171
    .local v3, "videoPickerIntent":Landroid/content/Intent;
    const-string v4, "video/*"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4172
    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4173
    const-string v4, "android.intent.extra.sizeLimit"

    const-wide/32 v6, 0x60000000

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4175
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4176
    .local v2, "photoPickerIntent":Landroid/content/Intent;
    const-string v4, "image/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4177
    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 4178
    .local v0, "chooserIntent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.INITIAL_INTENTS"

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/content/Intent;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4180
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$60;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lorg/telegram/ui/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 4184
    .end local v0    # "chooserIntent":Landroid/content/Intent;
    .end local v2    # "photoPickerIntent":Landroid/content/Intent;
    .end local v3    # "videoPickerIntent":Landroid/content/Intent;
    :goto_39
    return-void

    .line 4181
    :catch_3a
    move-exception v1

    .line 4182
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_39
.end method
