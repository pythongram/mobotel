.class Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1;
.super Ljava/lang/Object;
.source "WebPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;

.field final synthetic val$functionCodeFinal:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;

    .prologue
    .line 677
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;

    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1;->val$functionCodeFinal:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 680
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_19

    .line 681
    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;

    iget-object v4, v4, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->webView:Landroid/webkit/WebView;
    invoke-static {v4}, Lorg/telegram/ui/Components/WebPlayerView;->access$1600(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/webkit/WebView;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1;->val$functionCodeFinal:Ljava/lang/String;

    new-instance v6, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1$1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1$1;-><init>(Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1;)V

    invoke-virtual {v4, v5, v6}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 698
    :goto_18
    return-void

    .line 690
    :cond_19
    :try_start_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<script>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1;->val$functionCodeFinal:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</script>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 691
    .local v3, "javascript":Ljava/lang/String;
    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 692
    .local v1, "data":[B
    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, "base64":Ljava/lang/String;
    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;

    iget-object v4, v4, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->webView:Landroid/webkit/WebView;
    invoke-static {v4}, Lorg/telegram/ui/Components/WebPlayerView;->access$1600(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/webkit/WebView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data:text/html;charset=utf-8;base64,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_5d} :catch_5e

    goto :goto_18

    .line 694
    .end local v0    # "base64":Ljava/lang/String;
    .end local v1    # "data":[B
    .end local v3    # "javascript":Ljava/lang/String;
    :catch_5e
    move-exception v2

    .line 695
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_18
.end method
