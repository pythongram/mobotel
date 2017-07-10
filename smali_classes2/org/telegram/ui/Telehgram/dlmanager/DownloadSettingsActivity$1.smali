.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "DownloadSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    .prologue
    .line 76
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$1;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 79
    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    .line 80
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$1;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->finishFragment()V

    .line 82
    :cond_8
    return-void
.end method
