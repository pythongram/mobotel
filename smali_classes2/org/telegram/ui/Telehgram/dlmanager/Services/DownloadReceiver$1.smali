.class Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$1;
.super Ljava/lang/Object;
.source "DownloadReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->startDownloading(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;

.field final synthetic val$messageObjects:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;

    .prologue
    .line 145
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$1;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;

    iput-object p2, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$1;->val$messageObjects:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 148
    new-instance v0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$1$1;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver$1;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method
