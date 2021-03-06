.class Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;
.super Landroid/support/customtabs/CustomTabsServiceConnection;
.source "OneSignalChromeTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignalChromeTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OneSignalCustomTabsServiceConnection"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mParams:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/support/customtabs/CustomTabsServiceConnection;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;->mParams:Ljava/lang/String;

    .line 84
    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroid/support/customtabs/CustomTabsClient;)V
    .registers 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "customTabsClient"    # Landroid/support/customtabs/CustomTabsClient;

    .prologue
    const/4 v4, 0x0

    .line 88
    if-nez p2, :cond_4

    .line 117
    :cond_3
    :goto_3
    return-void

    .line 91
    :cond_4
    const-wide/16 v2, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/support/customtabs/CustomTabsClient;->warmup(J)Z

    .line 93
    new-instance v2, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection$1;

    invoke-direct {v2, p0}, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection$1;-><init>(Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;)V

    invoke-virtual {p2, v2}, Landroid/support/customtabs/CustomTabsClient;->newSession(Landroid/support/customtabs/CustomTabsCallback;)Landroid/support/customtabs/CustomTabsSession;

    move-result-object v0

    .line 103
    .local v0, "session":Landroid/support/customtabs/CustomTabsSession;
    if-eqz v0, :cond_3

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://onesignal.com/android_frame.html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;->mParams:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 107
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1, v4, v4}, Landroid/support/customtabs/CustomTabsSession;->mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    goto :goto_3
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 121
    return-void
.end method
