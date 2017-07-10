.class Lorg/telegram/ui/CacheControlActivity$4$2$1$1;
.super Ljava/lang/Object;
.source "CacheControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CacheControlActivity$4$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/CacheControlActivity$4$2$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CacheControlActivity$4$2$1;)V
    .registers 2
    .param p1, "this$3"    # Lorg/telegram/ui/CacheControlActivity$4$2$1;

    .prologue
    .line 426
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$4$2$1$1;->this$3:Lorg/telegram/ui/CacheControlActivity$4$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 430
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity$4$2$1$1;->this$3:Lorg/telegram/ui/CacheControlActivity$4$2$1;

    iget-object v2, v2, Lorg/telegram/ui/CacheControlActivity$4$2$1;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_3f

    .line 434
    :goto_7
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity$4$2$1$1;->this$3:Lorg/telegram/ui/CacheControlActivity$4$2$1;

    iget-object v2, v2, Lorg/telegram/ui/CacheControlActivity$4$2$1;->this$2:Lorg/telegram/ui/CacheControlActivity$4$2;

    iget-object v2, v2, Lorg/telegram/ui/CacheControlActivity$4$2;->this$1:Lorg/telegram/ui/CacheControlActivity$4;

    iget-object v2, v2, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;
    invoke-static {v2}, Lorg/telegram/ui/CacheControlActivity;->access$1000(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 435
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    const-string v3, "cache4.db"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 436
    .local v1, "file":Ljava/io/File;
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity$4$2$1$1;->this$3:Lorg/telegram/ui/CacheControlActivity$4$2$1;

    iget-object v2, v2, Lorg/telegram/ui/CacheControlActivity$4$2$1;->this$2:Lorg/telegram/ui/CacheControlActivity$4$2;

    iget-object v2, v2, Lorg/telegram/ui/CacheControlActivity$4$2;->this$1:Lorg/telegram/ui/CacheControlActivity$4;

    iget-object v2, v2, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    # setter for: Lorg/telegram/ui/CacheControlActivity;->databaseSize:J
    invoke-static {v2, v4, v5}, Lorg/telegram/ui/CacheControlActivity;->access$1402(Lorg/telegram/ui/CacheControlActivity;J)J

    .line 437
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity$4$2$1$1;->this$3:Lorg/telegram/ui/CacheControlActivity$4$2$1;

    iget-object v2, v2, Lorg/telegram/ui/CacheControlActivity$4$2$1;->this$2:Lorg/telegram/ui/CacheControlActivity$4$2;

    iget-object v2, v2, Lorg/telegram/ui/CacheControlActivity$4$2;->this$1:Lorg/telegram/ui/CacheControlActivity$4;

    iget-object v2, v2, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;
    invoke-static {v2}, Lorg/telegram/ui/CacheControlActivity;->access$1000(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->notifyDataSetChanged()V

    .line 439
    .end local v1    # "file":Ljava/io/File;
    :cond_3e
    return-void

    .line 431
    :catch_3f
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7
.end method
