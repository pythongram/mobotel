.class public Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;
.super Ljava/lang/Object;
.source "OPPOHomeBader.java"

# interfaces
.implements Lcom/onesignal/shortcutbadger/Badger;


# static fields
.field private static final INTENT_ACTION:Ljava/lang/String; = "com.oppo.unsettledevent"

.field private static final INTENT_EXTRA_BADGEUPGRADE_COUNT:Ljava/lang/String; = "app_badge_count"

.field private static final INTENT_EXTRA_BADGE_COUNT:Ljava/lang/String; = "number"

.field private static final INTENT_EXTRA_BADGE_UPGRADENUMBER:Ljava/lang/String; = "upgradeNumber"

.field private static final INTENT_EXTRA_PACKAGENAME:Ljava/lang/String; = "pakeageName"

.field private static final PROVIDER_CONTENT_URI:Ljava/lang/String; = "content://com.android.badge/badge"

.field private static ROMVERSION:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const/4 v0, -0x1

    sput v0, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;->ROMVERSION:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkObjExists(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 154
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private executeClassLoad(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1, "cls"    # Ljava/lang/Class;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "clsArr"    # [Ljava/lang/Class;
    .param p4, "objArr"    # [Ljava/lang/Object;

    .prologue
    .line 108
    const/4 v2, 0x0

    .line 109
    .local v2, "obj":Ljava/lang/Object;
    if-eqz p1, :cond_18

    invoke-direct {p0, p2}, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;->checkObjExists(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 111
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_18

    .line 112
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 114
    const/4 v3, 0x0

    :try_start_14
    invoke-virtual {v1, v3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_17} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_14 .. :try_end_17} :catch_1e

    move-result-object v2

    .line 122
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_18
    :goto_18
    return-object v2

    .line 115
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "obj":Ljava/lang/Object;
    :catch_19
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_18

    .line 117
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1e
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_18
.end method

.method private getClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 146
    .local v0, "cls":Ljava/lang/Class;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    .line 149
    :goto_5
    return-object v0

    .line 147
    :catch_6
    move-exception v1

    goto :goto_5
.end method

.method private getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 8
    .param p1, "cls"    # Ljava/lang/Class;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "clsArr"    # [Ljava/lang/Class;

    .prologue
    .line 126
    const/4 v2, 0x0

    .line 127
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz p1, :cond_9

    invoke-direct {p0, p2}, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;->checkObjExists(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 138
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_9
    :goto_9
    return-object v2

    .line 131
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :cond_a
    :try_start_a
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 132
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 133
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_15

    move-result-object v2

    goto :goto_9

    .line 134
    :catch_15
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    :try_start_16
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1b

    move-result-object v2

    goto :goto_9

    .line 137
    :catch_1b
    move-exception v1

    .line 138
    .local v1, "e2":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    goto :goto_9
.end method

.method private getSupportVersion()I
    .registers 8

    .prologue
    .line 77
    sget v1, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;->ROMVERSION:I

    .line 78
    .local v1, "i":I
    if-ltz v1, :cond_7

    .line 79
    sget v3, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;->ROMVERSION:I

    .line 103
    :goto_6
    return v3

    .line 82
    :cond_7
    :try_start_7
    const-string v3, "com.color.os.ColorBuild"

    invoke-direct {p0, v3}, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getColorOSVERSION"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;->executeClassLoad(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_2d

    move-result v1

    .line 86
    :goto_1b
    if-nez v1, :cond_45

    .line 88
    :try_start_1d
    const-string v3, "ro.build.version.opporom"

    invoke-direct {p0, v3}, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "str":Ljava/lang/String;
    const-string v3, "V1.4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 90
    const/4 v3, 0x3

    goto :goto_6

    .line 83
    .end local v2    # "str":Ljava/lang/String;
    :catch_2d
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1b

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "str":Ljava/lang/String;
    :cond_30
    const-string v3, "V2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 93
    const/4 v3, 0x4

    goto :goto_6

    .line 95
    :cond_3a
    const-string v3, "V2.1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3f} :catch_44

    move-result v3

    if-eqz v3, :cond_45

    .line 96
    const/4 v3, 0x5

    goto :goto_6

    .line 98
    .end local v2    # "str":Ljava/lang/String;
    :catch_44
    move-exception v3

    .line 102
    :cond_45
    sput v1, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;->ROMVERSION:I

    .line 103
    sget v3, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;->ROMVERSION:I

    goto :goto_6
.end method

.method private getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "propName"    # Ljava/lang/String;

    .prologue
    .line 160
    const/4 v1, 0x0

    .line 162
    .local v1, "input":Ljava/io/BufferedReader;
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getprop "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 163
    .local v4, "p":Ljava/lang/Process;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x400

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2c} :catch_38
    .catchall {:try_start_1 .. :try_end_2c} :catchall_3e

    .line 164
    .end local v1    # "input":Ljava/io/BufferedReader;
    .local v2, "input":Ljava/io/BufferedReader;
    :try_start_2c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "line":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_33} :catch_46
    .catchall {:try_start_2c .. :try_end_33} :catchall_43

    .line 169
    invoke-static {v2}, Lcom/onesignal/shortcutbadger/util/CloseHelper;->closeQuietly(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 171
    .end local v2    # "input":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "p":Ljava/lang/Process;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    :goto_37
    return-object v3

    .line 166
    :catch_38
    move-exception v0

    .line 167
    .local v0, "ex":Ljava/io/IOException;
    :goto_39
    const/4 v3, 0x0

    .line 169
    invoke-static {v1}, Lcom/onesignal/shortcutbadger/util/CloseHelper;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_37

    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_3e
    move-exception v5

    :goto_3f
    invoke-static {v1}, Lcom/onesignal/shortcutbadger/util/CloseHelper;->closeQuietly(Ljava/io/Closeable;)V

    throw v5

    .end local v1    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "p":Ljava/lang/Process;
    :catchall_43
    move-exception v5

    move-object v1, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    goto :goto_3f

    .line 166
    .end local v1    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    :catch_46
    move-exception v0

    move-object v1, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    goto :goto_39
.end method


# virtual methods
.method public executeBadge(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "badgeCount"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onesignal/shortcutbadger/ShortcutBadgeException;
        }
    .end annotation

    .prologue
    .line 48
    if-nez p3, :cond_3

    .line 49
    const/4 p3, -0x1

    .line 51
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.oppo.unsettledevent"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "pakeageName"

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v4, "number"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    const-string v4, "upgradeNumber"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    invoke-static {p1, v1}, Lcom/onesignal/shortcutbadger/util/BroadcastHelper;->canResolveBroadcast(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 56
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 69
    :cond_26
    :goto_26
    return-void

    .line 58
    :cond_27
    invoke-direct {p0}, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;->getSupportVersion()I

    move-result v3

    .line 59
    .local v3, "version":I
    const/4 v4, 0x6

    if-ne v3, v4, :cond_26

    .line 61
    :try_start_2e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, "extras":Landroid/os/Bundle;
    const-string v4, "app_badge_count"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://com.android.badge/badge"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "setAppBadgeCount"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_48} :catch_49

    goto :goto_26

    .line 64
    .end local v0    # "extras":Landroid/os/Bundle;
    :catch_49
    move-exception v2

    .line 65
    .local v2, "th":Ljava/lang/Throwable;
    new-instance v4, Lcom/onesignal/shortcutbadger/ShortcutBadgeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to resolve intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/onesignal/shortcutbadger/ShortcutBadgeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getSupportLaunchers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    const-string v0, "com.oppo.launcher"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
