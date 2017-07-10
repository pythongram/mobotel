.class Lorg/telegram/ui/CacheControlActivity$2$1;
.super Ljava/lang/Object;
.source "CacheControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CacheControlActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/CacheControlActivity$2;

.field final synthetic val$imagesClearedFinal:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/CacheControlActivity$2;Z)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/CacheControlActivity$2;

    .prologue
    .line 266
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$2$1;->this$1:Lorg/telegram/ui/CacheControlActivity$2;

    iput-boolean p2, p0, Lorg/telegram/ui/CacheControlActivity$2$1;->val$imagesClearedFinal:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 269
    iget-boolean v1, p0, Lorg/telegram/ui/CacheControlActivity$2$1;->val$imagesClearedFinal:Z

    if-eqz v1, :cond_b

    .line 270
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageLoader;->clearMemory()V

    .line 272
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$2$1;->this$1:Lorg/telegram/ui/CacheControlActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;
    invoke-static {v1}, Lorg/telegram/ui/CacheControlActivity;->access$1000(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 273
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$2$1;->this$1:Lorg/telegram/ui/CacheControlActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/CacheControlActivity$2;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;
    invoke-static {v1}, Lorg/telegram/ui/CacheControlActivity;->access$1000(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->notifyDataSetChanged()V

    .line 276
    :cond_20
    :try_start_20
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$2$1;->this$1:Lorg/telegram/ui/CacheControlActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/CacheControlActivity$2;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_28

    .line 280
    :goto_27
    return-void

    .line 277
    :catch_28
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_27
.end method
