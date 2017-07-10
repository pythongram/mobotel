.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$3;
.super Ljava/lang/Object;
.source "DownloadManagerActivity.java"

# interfaces
.implements Lorg/telegram/ui/Cells/BotHelpCell$BotHelpCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    .prologue
    .line 3198
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didPressUrl(Ljava/lang/String;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 3201
    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3202
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    .line 3208
    :cond_15
    :goto_15
    return-void

    .line 3203
    :cond_16
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3204
    new-instance v0, Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 3205
    .local v0, "fragment":Lorg/telegram/ui/DialogsActivity;
    invoke-virtual {v0, p1}, Lorg/telegram/ui/DialogsActivity;->setSearchString(Ljava/lang/String;)V

    .line 3206
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_15
.end method
