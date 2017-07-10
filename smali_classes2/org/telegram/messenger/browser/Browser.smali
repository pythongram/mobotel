.class public Lorg/telegram/messenger/browser/Browser;
.super Ljava/lang/Object;
.source "Browser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/browser/Browser$NavigationCallback;
    }
.end annotation


# static fields
.field private static currentCustomTabsActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

.field private static customTabsCurrentSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/telegram/messenger/support/customtabs/CustomTabsSession;",
            ">;"
        }
    .end annotation
.end field

.field private static customTabsPackageToBind:Ljava/lang/String;

.field private static customTabsServiceConnection:Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;

.field private static customTabsSession:Lorg/telegram/messenger/support/customtabs/CustomTabsSession;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lorg/telegram/messenger/support/customtabs/CustomTabsClient;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    return-object v0
.end method

.method static synthetic access$102(Lorg/telegram/messenger/support/customtabs/CustomTabsClient;)Lorg/telegram/messenger/support/customtabs/CustomTabsClient;
    .registers 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    .prologue
    .line 41
    sput-object p0, Lorg/telegram/messenger/browser/Browser;->customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    return-object p0
.end method

.method public static bindCustomTabsService(Landroid/app/Activity;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 69
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-ge v2, v3, :cond_8

    .line 113
    :cond_7
    :goto_7
    return-void

    .line 72
    :cond_8
    sget-object v2, Lorg/telegram/messenger/browser/Browser;->currentCustomTabsActivity:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_4f

    .line 73
    .local v0, "currentActivity":Landroid/app/Activity;
    :goto_c
    if-eqz v0, :cond_13

    if-eq v0, p0, :cond_13

    .line 74
    invoke-static {v0}, Lorg/telegram/messenger/browser/Browser;->unbindCustomTabsService(Landroid/app/Activity;)V

    .line 76
    :cond_13
    sget-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    if-nez v2, :cond_7

    .line 79
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lorg/telegram/messenger/browser/Browser;->currentCustomTabsActivity:Ljava/lang/ref/WeakReference;

    .line 81
    :try_start_1e
    sget-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsPackageToBind:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 82
    invoke-static {p0}, Lorg/telegram/messenger/support/customtabsclient/shared/CustomTabsHelper;->getPackageNameToUse(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsPackageToBind:Ljava/lang/String;

    .line 83
    sget-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsPackageToBind:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 87
    :cond_30
    new-instance v2, Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnection;

    new-instance v3, Lorg/telegram/messenger/browser/Browser$1;

    invoke-direct {v3}, Lorg/telegram/messenger/browser/Browser$1;-><init>()V

    invoke-direct {v2, v3}, Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnection;-><init>(Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnectionCallback;)V

    sput-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsServiceConnection:Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;

    .line 107
    sget-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsPackageToBind:Ljava/lang/String;

    sget-object v3, Lorg/telegram/messenger/browser/Browser;->customTabsServiceConnection:Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;

    invoke-static {p0, v2, v3}, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 108
    const/4 v2, 0x0

    sput-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsServiceConnection:Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_49} :catch_4a

    goto :goto_7

    .line 110
    :catch_4a
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 72
    .end local v0    # "currentActivity":Landroid/app/Activity;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4f
    sget-object v2, Lorg/telegram/messenger/browser/Browser;->currentCustomTabsActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    move-object v0, v2

    goto :goto_c
.end method

.method private static getCurrentSession()Lorg/telegram/messenger/support/customtabs/CustomTabsSession;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsCurrentSession:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    sget-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsCurrentSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    goto :goto_5
.end method

.method private static getSession()Lorg/telegram/messenger/support/customtabs/CustomTabsSession;
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 59
    sget-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    if-nez v0, :cond_a

    .line 60
    sput-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsSession:Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    .line 65
    :cond_7
    :goto_7
    sget-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsSession:Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    return-object v0

    .line 61
    :cond_a
    sget-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsSession:Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    if-nez v0, :cond_7

    .line 62
    sget-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    new-instance v1, Lorg/telegram/messenger/browser/Browser$NavigationCallback;

    invoke-direct {v1, v2}, Lorg/telegram/messenger/browser/Browser$NavigationCallback;-><init>(Lorg/telegram/messenger/browser/Browser$1;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->newSession(Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;)Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsSession:Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    .line 63
    sget-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsSession:Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    invoke-static {v0}, Lorg/telegram/messenger/browser/Browser;->setCurrentSession(Lorg/telegram/messenger/support/customtabs/CustomTabsSession;)V

    goto :goto_7
.end method

.method public static isInternalUri(Landroid/net/Uri;)Z
    .registers 4
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 197
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 199
    :goto_a
    const-string v1, "tg"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "telegram.me"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "t.me"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "telegram.dog"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    :cond_2e
    const/4 v1, 0x1

    :goto_2f
    return v1

    .line 198
    :cond_30
    const-string v0, ""

    goto :goto_a

    .line 199
    :cond_33
    const/4 v1, 0x0

    goto :goto_2f
.end method

.method public static isInternalUrl(Ljava/lang/String;)Z
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/browser/Browser;->isInternalUri(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static openUrl(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 147
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 148
    return-void
.end method

.method public static openUrl(Landroid/content/Context;Landroid/net/Uri;Z)V
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "allowCustom"    # Z

    .prologue
    .line 158
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 190
    :cond_4
    :goto_4
    return-void

    .line 161
    :cond_5
    invoke-static {p1}, Lorg/telegram/messenger/browser/Browser;->isInternalUri(Landroid/net/Uri;)Z

    move-result v5

    .line 163
    .local v5, "internalUri":Z
    :try_start_9
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b6

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, "scheme":Ljava/lang/String;
    :goto_17
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xf

    if-lt v8, v9, :cond_87

    if-eqz p2, :cond_87

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MediaController;->canCustomTabs()Z

    move-result v8

    if-eqz v8, :cond_87

    if-nez v5, :cond_87

    const-string v8, "tel"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_87

    .line 165
    new-instance v7, Landroid/content/Intent;

    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v9, Lorg/telegram/messenger/ShareBroadcastReceiver;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .local v7, "share":Landroid/content/Intent;
    const-string v8, "android.intent.action.SEND"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    new-instance v1, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;

    invoke-static {}, Lorg/telegram/messenger/browser/Browser;->getSession()Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;-><init>(Lorg/telegram/messenger/support/customtabs/CustomTabsSession;)V

    .line 169
    .local v1, "builder":Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;
    const-string v8, "actionBarDefault"

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->setToolbarColor(I)Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;

    .line 170
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->setShowTitle(Z)Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020020

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    const-string v9, "ShareFile"

    const v10, 0x7f0704fe

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v7, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v1, v8, v9, v10, v11}, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->setActionButton(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/PendingIntent;Z)Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;

    .line 172
    invoke-virtual {v1}, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->build()Lorg/telegram/messenger/support/customtabs/CustomTabsIntent;

    move-result-object v4

    .line 173
    .local v4, "intent":Lorg/telegram/messenger/support/customtabs/CustomTabsIntent;
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v8, v0

    invoke-virtual {v4, v8, p1}, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent;->launchUrl(Landroid/app/Activity;Landroid/net/Uri;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_82} :catch_83

    goto :goto_4

    .line 176
    .end local v1    # "builder":Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;
    .end local v4    # "intent":Lorg/telegram/messenger/support/customtabs/CustomTabsIntent;
    .end local v6    # "scheme":Ljava/lang/String;
    .end local v7    # "share":Landroid/content/Intent;
    :catch_83
    move-exception v3

    .line 177
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 180
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_87
    :try_start_87
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v4, v8, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 181
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_a2

    .line 182
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 185
    .end local v2    # "componentName":Landroid/content/ComponentName;
    :cond_a2
    const-string v8, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_ae} :catch_b0

    goto/16 :goto_4

    .line 187
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_b0
    move-exception v3

    .line 188
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 163
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_b6
    :try_start_b6
    const-string v6, ""
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b8} :catch_83

    goto/16 :goto_17
.end method

.method public static openUrl(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 140
    if-nez p1, :cond_3

    .line 144
    :goto_2
    return-void

    .line 143
    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_2
.end method

.method public static openUrl(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "allowCustom"    # Z

    .prologue
    .line 151
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 155
    :cond_4
    :goto_4
    return-void

    .line 154
    :cond_5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_4
.end method

.method private static setCurrentSession(Lorg/telegram/messenger/support/customtabs/CustomTabsSession;)V
    .registers 2
    .param p0, "session"    # Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    .prologue
    .line 55
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsCurrentSession:Ljava/lang/ref/WeakReference;

    .line 56
    return-void
.end method

.method public static unbindCustomTabsService(Landroid/app/Activity;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 116
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v2, v4, :cond_b

    sget-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsServiceConnection:Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;

    if-nez v2, :cond_c

    .line 130
    :cond_b
    :goto_b
    return-void

    .line 119
    :cond_c
    sget-object v2, Lorg/telegram/messenger/browser/Browser;->currentCustomTabsActivity:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_22

    move-object v0, v3

    .line 120
    .local v0, "currentActivity":Landroid/app/Activity;
    :goto_11
    if-ne v0, p0, :cond_18

    .line 121
    sget-object v2, Lorg/telegram/messenger/browser/Browser;->currentCustomTabsActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->clear()V

    .line 124
    :cond_18
    :try_start_18
    sget-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsServiceConnection:Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_2c

    .line 128
    :goto_1d
    sput-object v3, Lorg/telegram/messenger/browser/Browser;->customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    .line 129
    sput-object v3, Lorg/telegram/messenger/browser/Browser;->customTabsSession:Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    goto :goto_b

    .line 119
    .end local v0    # "currentActivity":Landroid/app/Activity;
    :cond_22
    sget-object v2, Lorg/telegram/messenger/browser/Browser;->currentCustomTabsActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    move-object v0, v2

    goto :goto_11

    .line 125
    .restart local v0    # "currentActivity":Landroid/app/Activity;
    :catch_2c
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1d
.end method
