.class Lorg/telegram/ui/CacheControlActivity$4$4;
.super Ljava/lang/Object;
.source "CacheControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CacheControlActivity$4;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/CacheControlActivity$4;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CacheControlActivity$4;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/CacheControlActivity$4;

    .prologue
    .line 503
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$4$4;->this$1:Lorg/telegram/ui/CacheControlActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 507
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$4$4;->this$1:Lorg/telegram/ui/CacheControlActivity$4;

    iget-object v1, v1, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->visibleDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lorg/telegram/ui/CacheControlActivity;->access$1600(Lorg/telegram/ui/CacheControlActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 508
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$4$4;->this$1:Lorg/telegram/ui/CacheControlActivity$4;

    iget-object v1, v1, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->visibleDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lorg/telegram/ui/CacheControlActivity;->access$1700(Lorg/telegram/ui/CacheControlActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_1d

    .line 513
    :cond_15
    :goto_15
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$4$4;->this$1:Lorg/telegram/ui/CacheControlActivity$4;

    iget-object v1, v1, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # invokes: Lorg/telegram/ui/CacheControlActivity;->cleanupFolders()V
    invoke-static {v1}, Lorg/telegram/ui/CacheControlActivity;->access$1800(Lorg/telegram/ui/CacheControlActivity;)V

    .line 514
    return-void

    .line 510
    :catch_1d
    move-exception v0

    .line 511
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_15
.end method
