.class Lorg/telegram/ui/WallpapersActivity$5$1;
.super Ljava/lang/Object;
.source "WallpapersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/WallpapersActivity$5;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/WallpapersActivity$5;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/WallpapersActivity$5;Lorg/telegram/tgnet/TLObject;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/WallpapersActivity$5;

    .prologue
    .line 413
    iput-object p1, p0, Lorg/telegram/ui/WallpapersActivity$5$1;->this$1:Lorg/telegram/ui/WallpapersActivity$5;

    iput-object p2, p0, Lorg/telegram/ui/WallpapersActivity$5$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 416
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity$5$1;->this$1:Lorg/telegram/ui/WallpapersActivity$5;

    iget-object v2, v2, Lorg/telegram/ui/WallpapersActivity$5;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->wallPapers:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/WallpapersActivity;->access$900(Lorg/telegram/ui/WallpapersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 417
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$5$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Vector;

    .line 418
    .local v1, "res":Lorg/telegram/tgnet/TLRPC$Vector;
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity$5$1;->this$1:Lorg/telegram/ui/WallpapersActivity$5;

    iget-object v2, v2, Lorg/telegram/ui/WallpapersActivity$5;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->wallpappersByIds:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/WallpapersActivity;->access$500(Lorg/telegram/ui/WallpapersActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 419
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 420
    .local v0, "obj":Ljava/lang/Object;
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity$5$1;->this$1:Lorg/telegram/ui/WallpapersActivity$5;

    iget-object v2, v2, Lorg/telegram/ui/WallpapersActivity$5;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->wallPapers:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/WallpapersActivity;->access$900(Lorg/telegram/ui/WallpapersActivity;)Ljava/util/ArrayList;

    move-result-object v4

    move-object v2, v0

    check-cast v2, Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity$5$1;->this$1:Lorg/telegram/ui/WallpapersActivity$5;

    iget-object v2, v2, Lorg/telegram/ui/WallpapersActivity$5;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->wallpappersByIds:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/WallpapersActivity;->access$500(Lorg/telegram/ui/WallpapersActivity;)Ljava/util/HashMap;

    move-result-object v4

    move-object v2, v0

    check-cast v2, Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v0, Lorg/telegram/tgnet/TLRPC$WallPaper;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 423
    :cond_4f
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity$5$1;->this$1:Lorg/telegram/ui/WallpapersActivity$5;

    iget-object v2, v2, Lorg/telegram/ui/WallpapersActivity$5;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->listAdapter:Lorg/telegram/ui/WallpapersActivity$ListAdapter;
    invoke-static {v2}, Lorg/telegram/ui/WallpapersActivity;->access$700(Lorg/telegram/ui/WallpapersActivity;)Lorg/telegram/ui/WallpapersActivity$ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_64

    .line 424
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity$5$1;->this$1:Lorg/telegram/ui/WallpapersActivity$5;

    iget-object v2, v2, Lorg/telegram/ui/WallpapersActivity$5;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->listAdapter:Lorg/telegram/ui/WallpapersActivity$ListAdapter;
    invoke-static {v2}, Lorg/telegram/ui/WallpapersActivity;->access$700(Lorg/telegram/ui/WallpapersActivity;)Lorg/telegram/ui/WallpapersActivity$ListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/WallpapersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 426
    :cond_64
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity$5$1;->this$1:Lorg/telegram/ui/WallpapersActivity$5;

    iget-object v2, v2, Lorg/telegram/ui/WallpapersActivity$5;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;
    invoke-static {v2}, Lorg/telegram/ui/WallpapersActivity;->access$400(Lorg/telegram/ui/WallpapersActivity;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_75

    .line 427
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity$5$1;->this$1:Lorg/telegram/ui/WallpapersActivity$5;

    iget-object v2, v2, Lorg/telegram/ui/WallpapersActivity$5;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # invokes: Lorg/telegram/ui/WallpapersActivity;->processSelectedBackground()V
    invoke-static {v2}, Lorg/telegram/ui/WallpapersActivity;->access$800(Lorg/telegram/ui/WallpapersActivity;)V

    .line 429
    :cond_75
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity$5$1;->this$1:Lorg/telegram/ui/WallpapersActivity$5;

    iget-object v3, v3, Lorg/telegram/ui/WallpapersActivity$5;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->wallPapers:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/WallpapersActivity;->access$900(Lorg/telegram/ui/WallpapersActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesStorage;->putWallpapers(Ljava/util/ArrayList;)V

    .line 430
    return-void
.end method
