.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$20;
.super Ljava/lang/Object;
.source "DownloadManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 1208
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$20;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1211
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$20;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$20;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->downloaderRunning:Z

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    :goto_9
    iput-boolean v0, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->downloaderRunning:Z

    .line 1212
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$20;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->downloaderRunning:Z

    if-eqz v0, :cond_2f

    .line 1213
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$20;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$20;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    iget-object v1, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    # invokes: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->startDownloading(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$4800(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Ljava/util/ArrayList;)V

    .line 1214
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$20;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->bottomOverlayText:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$4900(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "StopDownloader"

    const v2, 0x7f0707e2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    :goto_2c
    return-void

    .line 1211
    :cond_2d
    const/4 v0, 0x0

    goto :goto_9

    .line 1216
    :cond_2f
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$20;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # invokes: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->stopDownloading()V
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$5000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V

    .line 1217
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$20;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->bottomOverlayText:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$4900(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "StartDownloader"

    const v2, 0x7f0707dd

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2c
.end method
