.class public Lnet/hockeyapp/android/CrashManager;
.super Ljava/lang/Object;
.source "CrashManager.java"


# static fields
.field private static final ALWAYS_SEND_KEY:Ljava/lang/String; = "always_send_crash_reports"

.field private static final STACK_TRACES_FOUND_CONFIRMED:I = 0x2

.field private static final STACK_TRACES_FOUND_NEW:I = 0x1

.field private static final STACK_TRACES_FOUND_NONE:I

.field private static didCrashInLastSession:Z

.field private static identifier:Ljava/lang/String;

.field private static initializeTimestamp:J

.field private static submitting:Z

.field private static urlString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 47
    sput-object v1, Lnet/hockeyapp/android/CrashManager;->identifier:Ljava/lang/String;

    .line 52
    sput-object v1, Lnet/hockeyapp/android/CrashManager;->urlString:Ljava/lang/String;

    .line 57
    sput-boolean v0, Lnet/hockeyapp/android/CrashManager;->submitting:Z

    .line 61
    sput-boolean v0, Lnet/hockeyapp/android/CrashManager;->didCrashInLastSession:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 43
    sput-boolean p0, Lnet/hockeyapp/android/CrashManager;->submitting:Z

    return p0
.end method

.method private static contentsOfFile(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 694
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const/4 v1, 0x0

    .line 695
    .local v1, "context":Landroid/content/Context;
    if-eqz p0, :cond_5c

    .line 696
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "context":Landroid/content/Context;
    check-cast v1, Landroid/content/Context;

    .line 697
    .restart local v1    # "context":Landroid/content/Context;
    if-eqz v1, :cond_5c

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 699
    .local v0, "contents":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 701
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_11
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v1, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_1f} :catch_68
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1f} :catch_49
    .catchall {:try_start_11 .. :try_end_1f} :catchall_55

    .line 702
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 703
    .local v3, "line":Ljava/lang/String;
    :goto_20
    :try_start_20
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 704
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    const-string v6, "line.separator"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_32} :catch_33
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_32} :catch_65
    .catchall {:try_start_20 .. :try_end_32} :catchall_62

    goto :goto_20

    .line 707
    :catch_33
    move-exception v6

    move-object v4, v5

    .line 711
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :goto_35
    if-eqz v4, :cond_3a

    .line 713
    :try_start_37
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_5e

    .line 719
    :cond_3a
    :goto_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 723
    .end local v0    # "contents":Ljava/lang/StringBuilder;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :goto_3e
    return-object v6

    .line 711
    .restart local v0    # "contents":Ljava/lang/StringBuilder;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_3f
    if-eqz v5, :cond_6a

    .line 713
    :try_start_41
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_46

    move-object v4, v5

    .line 715
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3a

    .line 714
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_46
    move-exception v6

    move-object v4, v5

    .line 715
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3a

    .line 708
    .end local v3    # "line":Ljava/lang/String;
    :catch_49
    move-exception v2

    .line 709
    .local v2, "e":Ljava/io/IOException;
    :goto_4a
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_55

    .line 711
    if-eqz v4, :cond_3a

    .line 713
    :try_start_4f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_3a

    .line 714
    :catch_53
    move-exception v6

    goto :goto_3a

    .line 711
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_55
    move-exception v6

    :goto_56
    if-eqz v4, :cond_5b

    .line 713
    :try_start_58
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_60

    .line 715
    :cond_5b
    :goto_5b
    throw v6

    .line 723
    .end local v0    # "contents":Ljava/lang/StringBuilder;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :cond_5c
    const/4 v6, 0x0

    goto :goto_3e

    .line 714
    .restart local v0    # "contents":Ljava/lang/StringBuilder;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_5e
    move-exception v6

    goto :goto_3a

    :catch_60
    move-exception v7

    goto :goto_5b

    .line 711
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_62
    move-exception v6

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_56

    .line 708
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_65
    move-exception v2

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_4a

    .line 707
    .end local v3    # "line":Ljava/lang/String;
    :catch_68
    move-exception v6

    goto :goto_35

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_6a
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3a
.end method

.method private static deleteRetryCounter(Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V
    .registers 8
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "maxRetryAttempts"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 655
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const/4 v0, 0x0

    .line 656
    .local v0, "context":Landroid/content/Context;
    if-eqz p0, :cond_2f

    .line 657
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "context":Landroid/content/Context;
    check-cast v0, Landroid/content/Context;

    .line 658
    .restart local v0    # "context":Landroid/content/Context;
    if-eqz v0, :cond_2f

    .line 659
    const-string v3, "HockeySDK"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 660
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 661
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RETRY_COUNT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 662
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 665
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :cond_2f
    return-void
.end method

.method private static deleteStackTrace(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .registers 8
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 672
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const/4 v1, 0x0

    .line 673
    .local v1, "context":Landroid/content/Context;
    if-eqz p0, :cond_2f

    .line 674
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "context":Landroid/content/Context;
    check-cast v1, Landroid/content/Context;

    .line 675
    .restart local v1    # "context":Landroid/content/Context;
    if-eqz v1, :cond_2f

    .line 676
    invoke-virtual {v1, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 678
    const-string v4, ".stacktrace"

    const-string v5, ".user"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 679
    .local v3, "user":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 681
    const-string v4, ".stacktrace"

    const-string v5, ".contact"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, "contact":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 684
    const-string v4, ".stacktrace"

    const-string v5, ".description"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 685
    .local v2, "description":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 688
    .end local v0    # "contact":Ljava/lang/String;
    .end local v2    # "description":Ljava/lang/String;
    .end local v3    # "user":Ljava/lang/String;
    :cond_2f
    return-void
.end method

.method public static deleteStackTraces(Ljava/lang/ref/WeakReference;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->searchForStackTraces()[Ljava/lang/String;

    move-result-object v4

    .line 389
    .local v4, "list":[Ljava/lang/String;
    if-eqz v4, :cond_67

    array-length v5, v4

    if-lez v5, :cond_67

    .line 390
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " stacktrace(s)."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    .line 392
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_27
    array-length v5, v4

    if-ge v3, v5, :cond_67

    .line 394
    const/4 v1, 0x0

    .line 395
    .local v1, "context":Landroid/content/Context;
    if-eqz p0, :cond_5f

    .line 396
    :try_start_2d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete stacktrace "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    .line 397
    aget-object v5, v4, v3

    invoke-static {p0, v5}, Lnet/hockeyapp/android/CrashManager;->deleteStackTrace(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/content/Context;

    move-object v1, v0

    .line 400
    if-eqz v1, :cond_5f

    .line 401
    aget-object v5, v4, v3

    invoke-virtual {v1, v5}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_5f} :catch_62

    .line 392
    :cond_5f
    :goto_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 404
    :catch_62
    move-exception v2

    .line 405
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5f

    .line 409
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "index":I
    :cond_67
    return-void
.end method

.method public static didCrashInLastSession()Z
    .registers 1

    .prologue
    .line 238
    sget-boolean v0, Lnet/hockeyapp/android/CrashManager;->didCrashInLastSession:Z

    return v0
.end method

.method public static execute(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 167
    if-eqz p1, :cond_64

    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->ignoreDefaultHandler()Z

    move-result v5

    if-eqz v5, :cond_64

    move v5, v6

    :goto_b
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 168
    .local v2, "ignoreDefaultHandler":Ljava/lang/Boolean;
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 170
    .local v4, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-static {v4}, Lnet/hockeyapp/android/CrashManager;->hasStackTraces(Ljava/lang/ref/WeakReference;)I

    move-result v1

    .line 171
    .local v1, "foundOrSend":I
    if-ne v1, v6, :cond_70

    .line 172
    sput-boolean v6, Lnet/hockeyapp/android/CrashManager;->didCrashInLastSession:Z

    .line 173
    instance-of v5, p0, Landroid/app/Activity;

    if-nez v5, :cond_66

    :goto_20
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 174
    .local v0, "autoSend":Ljava/lang/Boolean;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 175
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v6, "always_send_crash_reports"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 177
    if-eqz p1, :cond_56

    .line 178
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->shouldAutoUploadCrashes()Z

    move-result v6

    or-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesFound()Z

    move-result v6

    or-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 181
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onNewCrashesFound()V

    .line 184
    :cond_56
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_68

    .line 185
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v4, p1, v5}, Lnet/hockeyapp/android/CrashManager;->showDialog(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    .line 198
    .end local v0    # "autoSend":Ljava/lang/Boolean;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :goto_63
    return-void

    .end local v1    # "foundOrSend":I
    .end local v2    # "ignoreDefaultHandler":Ljava/lang/Boolean;
    .end local v4    # "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    :cond_64
    move v5, v7

    .line 167
    goto :goto_b

    .restart local v1    # "foundOrSend":I
    .restart local v2    # "ignoreDefaultHandler":Ljava/lang/Boolean;
    .restart local v4    # "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    :cond_66
    move v6, v7

    .line 173
    goto :goto_20

    .line 187
    .restart local v0    # "autoSend":Ljava/lang/Boolean;
    .restart local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_68
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v4, p1, v5}, Lnet/hockeyapp/android/CrashManager;->sendCrashes(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    goto :goto_63

    .line 189
    .end local v0    # "autoSend":Ljava/lang/Boolean;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_70
    const/4 v5, 0x2

    if-ne v1, v5, :cond_80

    .line 190
    if-eqz p1, :cond_78

    .line 191
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onConfirmedCrashesFound()V

    .line 194
    :cond_78
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v4, p1, v5}, Lnet/hockeyapp/android/CrashManager;->sendCrashes(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    goto :goto_63

    .line 196
    :cond_80
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v4, p1, v5}, Lnet/hockeyapp/android/CrashManager;->registerHandler(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    goto :goto_63
.end method

.method private static getAlertTitle(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 553
    invoke-static {p0}, Lnet/hockeyapp/android/utils/Util;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, "appTitle":Ljava/lang/String;
    sget v2, Lnet/hockeyapp/android/R$string;->hockeyapp_crash_dialog_title:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "message":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getConfirmedFilenames(Ljava/lang/ref/WeakReference;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 790
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const/4 v2, 0x0

    .line 791
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_24

    .line 792
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 793
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_24

    .line 794
    const-string v3, "HockeySDK"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 795
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "ConfirmedFilenames"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 798
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_24
    return-object v2
.end method

.method public static getInitializeTimestamp()J
    .registers 2

    .prologue
    .line 802
    sget-wide v0, Lnet/hockeyapp/android/CrashManager;->initializeTimestamp:J

    return-wide v0
.end method

.method public static getLastCrashDetails()Lnet/hockeyapp/android/objects/CrashDetails;
    .registers 12

    .prologue
    .line 242
    sget-object v8, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    if-eqz v8, :cond_a

    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->didCrashInLastSession()Z

    move-result v8

    if-nez v8, :cond_c

    .line 243
    :cond_a
    const/4 v7, 0x0

    .line 272
    .local v0, "dir":Ljava/io/File;
    .local v3, "files":[Ljava/io/File;
    .local v4, "lastModification":J
    .local v6, "lastModifiedFile":Ljava/io/File;
    .local v7, "result":Lnet/hockeyapp/android/objects/CrashDetails;
    :cond_b
    :goto_b
    return-object v7

    .line 246
    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "lastModification":J
    .end local v6    # "lastModifiedFile":Ljava/io/File;
    .end local v7    # "result":Lnet/hockeyapp/android/objects/CrashDetails;
    :cond_c
    new-instance v0, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    .restart local v0    # "dir":Ljava/io/File;
    new-instance v8, Lnet/hockeyapp/android/CrashManager$1;

    invoke-direct {v8}, Lnet/hockeyapp/android/CrashManager$1;-><init>()V

    invoke-virtual {v0, v8}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 254
    .restart local v3    # "files":[Ljava/io/File;
    const-wide/16 v4, 0x0

    .line 255
    .restart local v4    # "lastModification":J
    const/4 v6, 0x0

    .line 256
    .restart local v6    # "lastModifiedFile":Ljava/io/File;
    const/4 v7, 0x0

    .line 257
    .restart local v7    # "result":Lnet/hockeyapp/android/objects/CrashDetails;
    array-length v9, v3

    const/4 v8, 0x0

    :goto_35
    if-ge v8, v9, :cond_49

    aget-object v2, v3, v8

    .line 258
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v10, v10, v4

    if-lez v10, :cond_46

    .line 259
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 260
    move-object v6, v2

    .line 257
    :cond_46
    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    .line 264
    .end local v2    # "file":Ljava/io/File;
    :cond_49
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 266
    :try_start_51
    invoke-static {v6}, Lnet/hockeyapp/android/objects/CrashDetails;->fromFile(Ljava/io/File;)Lnet/hockeyapp/android/objects/CrashDetails;
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_56

    move-result-object v7

    goto :goto_b

    .line 267
    :catch_56
    move-exception v1

    .line 268
    .local v1, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method private static getURLString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/hockeyapp/android/CrashManager;->urlString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "api/2/apps/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lnet/hockeyapp/android/CrashManager;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/crashes/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static handleUserInput(Lnet/hockeyapp/android/objects/CrashManagerUserInput;Lnet/hockeyapp/android/objects/CrashMetaData;Lnet/hockeyapp/android/CrashManagerListener;Ljava/lang/ref/WeakReference;Z)Z
    .registers 11
    .param p0, "userInput"    # Lnet/hockeyapp/android/objects/CrashManagerUserInput;
    .param p1, "userProvidedMetaData"    # Lnet/hockeyapp/android/objects/CrashMetaData;
    .param p2, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;
    .param p4, "ignoreDefaultHandler"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/hockeyapp/android/objects/CrashManagerUserInput;",
            "Lnet/hockeyapp/android/objects/CrashMetaData;",
            "Lnet/hockeyapp/android/CrashManagerListener;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p3, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 428
    sget-object v4, Lnet/hockeyapp/android/CrashManager$7;->$SwitchMap$net$hockeyapp$android$objects$CrashManagerUserInput:[I

    invoke-virtual {p0}, Lnet/hockeyapp/android/objects/CrashManagerUserInput;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_42

    move v2, v3

    .line 456
    :goto_e
    return v2

    .line 430
    :pswitch_f
    if-eqz p2, :cond_14

    .line 431
    invoke-virtual {p2}, Lnet/hockeyapp/android/CrashManagerListener;->onUserDeniedCrashes()V

    .line 434
    :cond_14
    invoke-static {p3}, Lnet/hockeyapp/android/CrashManager;->deleteStackTraces(Ljava/lang/ref/WeakReference;)V

    .line 435
    invoke-static {p3, p2, p4}, Lnet/hockeyapp/android/CrashManager;->registerHandler(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    goto :goto_e

    .line 438
    :pswitch_1b
    const/4 v0, 0x0

    .line 439
    .local v0, "context":Landroid/content/Context;
    if-eqz p3, :cond_24

    .line 440
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "context":Landroid/content/Context;
    check-cast v0, Landroid/content/Context;

    .line 443
    .restart local v0    # "context":Landroid/content/Context;
    :cond_24
    if-nez v0, :cond_28

    move v2, v3

    .line 444
    goto :goto_e

    .line 447
    :cond_28
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 448
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "always_send_crash_reports"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 450
    invoke-static {p3, p2, p4, p1}, Lnet/hockeyapp/android/CrashManager;->sendCrashes(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;ZLnet/hockeyapp/android/objects/CrashMetaData;)V

    goto :goto_e

    .line 453
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :pswitch_3d
    invoke-static {p3, p2, p4, p1}, Lnet/hockeyapp/android/CrashManager;->sendCrashes(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;ZLnet/hockeyapp/android/objects/CrashMetaData;)V

    goto :goto_e

    .line 428
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_f
        :pswitch_1b
        :pswitch_3d
    .end packed-switch
.end method

.method public static hasStackTraces(Ljava/lang/ref/WeakReference;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->searchForStackTraces()[Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "filenames":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 211
    .local v0, "confirmedFilenames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 212
    .local v3, "result":I
    if-eqz v2, :cond_1f

    array-length v4, v2

    if-lez v4, :cond_1f

    .line 214
    :try_start_b
    invoke-static {p0}, Lnet/hockeyapp/android/CrashManager;->getConfirmedFilenames(Ljava/lang/ref/WeakReference;)Ljava/util/List;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_25

    move-result-object v0

    .line 220
    :goto_f
    if-eqz v0, :cond_23

    .line 221
    const/4 v3, 0x2

    .line 223
    array-length v5, v2

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v5, :cond_1f

    aget-object v1, v2, v4

    .line 224
    .local v1, "filename":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    .line 225
    const/4 v3, 0x1

    .line 234
    .end local v1    # "filename":Ljava/lang/String;
    :cond_1f
    :goto_1f
    return v3

    .line 223
    .restart local v1    # "filename":Ljava/lang/String;
    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 230
    .end local v1    # "filename":Ljava/lang/String;
    :cond_23
    const/4 v3, 0x1

    goto :goto_1f

    .line 216
    :catch_25
    move-exception v4

    goto :goto_f
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "appIdentifier"    # Ljava/lang/String;
    .param p3, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;

    .prologue
    .line 154
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lnet/hockeyapp/android/CrashManager;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    .line 155
    return-void
.end method

.method private static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "appIdentifier"    # Ljava/lang/String;
    .param p3, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;
    .param p4, "registerHandler"    # Z

    .prologue
    const/4 v2, 0x0

    .line 485
    if-eqz p0, :cond_41

    .line 486
    sget-wide v4, Lnet/hockeyapp/android/CrashManager;->initializeTimestamp:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_11

    .line 487
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lnet/hockeyapp/android/CrashManager;->initializeTimestamp:J

    .line 489
    :cond_11
    sput-object p1, Lnet/hockeyapp/android/CrashManager;->urlString:Ljava/lang/String;

    .line 490
    invoke-static {p2}, Lnet/hockeyapp/android/utils/Util;->sanitizeAppIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lnet/hockeyapp/android/CrashManager;->identifier:Ljava/lang/String;

    .line 491
    sput-boolean v2, Lnet/hockeyapp/android/CrashManager;->didCrashInLastSession:Z

    .line 493
    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    .line 495
    sget-object v3, Lnet/hockeyapp/android/CrashManager;->identifier:Ljava/lang/String;

    if-nez v3, :cond_26

    .line 496
    sget-object v3, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    sput-object v3, Lnet/hockeyapp/android/CrashManager;->identifier:Ljava/lang/String;

    .line 499
    :cond_26
    if-eqz p4, :cond_41

    .line 500
    if-eqz p3, :cond_31

    invoke-virtual {p3}, Lnet/hockeyapp/android/CrashManagerListener;->ignoreDefaultHandler()Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 v2, 0x1

    :cond_31
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 501
    .local v0, "ignoreDefaultHandler":Ljava/lang/Boolean;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 502
    .local v1, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, p3, v2}, Lnet/hockeyapp/android/CrashManager;->registerHandler(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    .line 505
    .end local v0    # "ignoreDefaultHandler":Ljava/lang/Boolean;
    .end local v1    # "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    :cond_41
    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appIdentifier"    # Ljava/lang/String;
    .param p2, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;

    .prologue
    .line 139
    const-string v0, "https://sdk.hockeyapp.net/"

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, p2, v1}, Lnet/hockeyapp/android/CrashManager;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    .line 140
    return-void
.end method

.method private static joinArray([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 752
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 753
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_19

    .line 754
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 755
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_16

    .line 756
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 753
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 759
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static register(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-static {p0}, Lnet/hockeyapp/android/utils/Util;->getAppIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "appIdentifier":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 83
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HockeyApp app identifier was not configured correctly in manifest or build configuration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_12
    invoke-static {p0, v0}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appIdentifier"    # Ljava/lang/String;

    .prologue
    .line 97
    const-string v0, "https://sdk.hockeyapp.net/"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 98
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "appIdentifier"    # Ljava/lang/String;
    .param p3, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lnet/hockeyapp/android/CrashManager;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    .line 125
    invoke-static {p0, p3}, Lnet/hockeyapp/android/CrashManager;->execute(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 126
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appIdentifier"    # Ljava/lang/String;
    .param p2, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;

    .prologue
    .line 110
    const-string v0, "https://sdk.hockeyapp.net/"

    invoke-static {p0, v0, p1, p2}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 111
    return-void
.end method

.method private static registerHandler(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .registers 6
    .param p1, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;
    .param p2, "ignoreDefaultHandler"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lnet/hockeyapp/android/CrashManagerListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 598
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    sget-object v1, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_47

    sget-object v1, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 600
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 601
    .local v0, "currentHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v0, :cond_34

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current handler class = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    .line 606
    :cond_34
    instance-of v1, v0, Lnet/hockeyapp/android/ExceptionHandler;

    if-eqz v1, :cond_3e

    .line 607
    check-cast v0, Lnet/hockeyapp/android/ExceptionHandler;

    .end local v0    # "currentHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/ExceptionHandler;->setListener(Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 614
    :goto_3d
    return-void

    .line 609
    .restart local v0    # "currentHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_3e
    new-instance v1, Lnet/hockeyapp/android/ExceptionHandler;

    invoke-direct {v1, v0, p1, p2}, Lnet/hockeyapp/android/ExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_3d

    .line 612
    .end local v0    # "currentHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_47
    const-string v1, "Exception handler not set because version or package is null."

    invoke-static {v1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    goto :goto_3d
.end method

.method public static resetAlwaysSend(Ljava/lang/ref/WeakReference;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const/4 v0, 0x0

    .line 469
    .local v0, "context":Landroid/content/Context;
    if-eqz p0, :cond_1c

    .line 470
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "context":Landroid/content/Context;
    check-cast v0, Landroid/content/Context;

    .line 472
    .restart local v0    # "context":Landroid/content/Context;
    if-eqz v0, :cond_1c

    .line 473
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 474
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "always_send_crash_reports"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 477
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_1c
    return-void
.end method

.method private static saveConfirmedStackTraces(Ljava/lang/ref/WeakReference;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 730
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const/4 v0, 0x0

    .line 731
    .local v0, "context":Landroid/content/Context;
    if-eqz p0, :cond_29

    .line 732
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "context":Landroid/content/Context;
    check-cast v0, Landroid/content/Context;

    .line 733
    .restart local v0    # "context":Landroid/content/Context;
    if-eqz v0, :cond_29

    .line 735
    :try_start_b
    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->searchForStackTraces()[Ljava/lang/String;

    move-result-object v2

    .line 736
    .local v2, "filenames":[Ljava/lang/String;
    const-string v4, "HockeySDK"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 737
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 738
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "ConfirmedFilenames"

    const-string/jumbo v5, "|"

    invoke-static {v2, v5}, Lnet/hockeyapp/android/CrashManager;->joinArray([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 739
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_29} :catch_2a

    .line 745
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "filenames":[Ljava/lang/String;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_29
    :goto_29
    return-void

    .line 740
    :catch_2a
    move-exception v4

    goto :goto_29
.end method

.method private static searchForStackTraces()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 766
    sget-object v3, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    if-eqz v3, :cond_50

    .line 767
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Looking for exceptions in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    .line 770
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 771
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    .line 772
    .local v0, "created":Z
    if-nez v0, :cond_46

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_46

    .line 773
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 785
    .end local v0    # "created":Z
    .end local v1    # "dir":Ljava/io/File;
    :goto_45
    return-object v3

    .line 777
    .restart local v0    # "created":Z
    .restart local v1    # "dir":Ljava/io/File;
    :cond_46
    new-instance v2, Lnet/hockeyapp/android/CrashManager$6;

    invoke-direct {v2}, Lnet/hockeyapp/android/CrashManager$6;-><init>()V

    .line 782
    .local v2, "filter":Ljava/io/FilenameFilter;
    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_45

    .line 784
    .end local v0    # "created":Z
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "filter":Ljava/io/FilenameFilter;
    :cond_50
    const-string v3, "Can\'t search for exception as file path is null."

    invoke-static {v3}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    .line 785
    const/4 v3, 0x0

    goto :goto_45
.end method

.method private static sendCrashes(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .registers 4
    .param p1, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;
    .param p2, "ignoreDefaultHandler"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lnet/hockeyapp/android/CrashManagerListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 564
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lnet/hockeyapp/android/CrashManager;->sendCrashes(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;ZLnet/hockeyapp/android/objects/CrashMetaData;)V

    .line 565
    return-void
.end method

.method private static sendCrashes(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;ZLnet/hockeyapp/android/objects/CrashMetaData;)V
    .registers 6
    .param p1, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;
    .param p2, "ignoreDefaultHandler"    # Z
    .param p3, "crashMetaData"    # Lnet/hockeyapp/android/objects/CrashMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lnet/hockeyapp/android/CrashManagerListener;",
            "Z",
            "Lnet/hockeyapp/android/objects/CrashMetaData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 572
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-static {p0}, Lnet/hockeyapp/android/CrashManager;->saveConfirmedStackTraces(Ljava/lang/ref/WeakReference;)V

    .line 573
    invoke-static {p0, p1, p2}, Lnet/hockeyapp/android/CrashManager;->registerHandler(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    .line 575
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 576
    .local v0, "ctx":Landroid/content/Context;
    if-eqz v0, :cond_15

    invoke-static {v0}, Lnet/hockeyapp/android/utils/Util;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 592
    :cond_14
    :goto_14
    return-void

    .line 581
    :cond_15
    sget-boolean v1, Lnet/hockeyapp/android/CrashManager;->submitting:Z

    if-nez v1, :cond_14

    .line 582
    const/4 v1, 0x1

    sput-boolean v1, Lnet/hockeyapp/android/CrashManager;->submitting:Z

    .line 584
    new-instance v1, Lnet/hockeyapp/android/CrashManager$5;

    invoke-direct {v1, p0, p1, p3}, Lnet/hockeyapp/android/CrashManager$5;-><init>(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Lnet/hockeyapp/android/objects/CrashMetaData;)V

    .line 590
    invoke-virtual {v1}, Lnet/hockeyapp/android/CrashManager$5;->start()V

    goto :goto_14
.end method

.method private static showDialog(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .registers 8
    .param p1, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;
    .param p2, "ignoreDefaultHandler"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lnet/hockeyapp/android/CrashManagerListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 512
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const/4 v2, 0x0

    .line 513
    .local v2, "context":Landroid/content/Context;
    if-eqz p0, :cond_9

    .line 514
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "context":Landroid/content/Context;
    check-cast v2, Landroid/content/Context;

    .line 517
    .restart local v2    # "context":Landroid/content/Context;
    :cond_9
    if-nez v2, :cond_c

    .line 550
    :cond_b
    :goto_b
    return-void

    .line 521
    :cond_c
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onHandleAlertView()Z

    move-result v3

    if-nez v3, :cond_b

    .line 525
    :cond_14
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 526
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {v2}, Lnet/hockeyapp/android/CrashManager;->getAlertTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "alertTitle":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 528
    sget v3, Lnet/hockeyapp/android/R$string;->hockeyapp_crash_dialog_message:I

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 530
    sget v3, Lnet/hockeyapp/android/R$string;->hockeyapp_crash_dialog_negative_button:I

    new-instance v4, Lnet/hockeyapp/android/CrashManager$2;

    invoke-direct {v4, p1, p0, p2}, Lnet/hockeyapp/android/CrashManager$2;-><init>(Lnet/hockeyapp/android/CrashManagerListener;Ljava/lang/ref/WeakReference;Z)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 536
    sget v3, Lnet/hockeyapp/android/R$string;->hockeyapp_crash_dialog_neutral_button:I

    new-instance v4, Lnet/hockeyapp/android/CrashManager$3;

    invoke-direct {v4, p1, p0, p2}, Lnet/hockeyapp/android/CrashManager$3;-><init>(Lnet/hockeyapp/android/CrashManagerListener;Ljava/lang/ref/WeakReference;Z)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 542
    sget v3, Lnet/hockeyapp/android/R$string;->hockeyapp_crash_dialog_positive_button:I

    new-instance v4, Lnet/hockeyapp/android/CrashManager$4;

    invoke-direct {v4, p1, p0, p2}, Lnet/hockeyapp/android/CrashManager$4;-><init>(Lnet/hockeyapp/android/CrashManagerListener;Ljava/lang/ref/WeakReference;Z)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 549
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_b
.end method

.method public static submitStackTraces(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;)V
    .registers 3
    .param p1, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lnet/hockeyapp/android/CrashManagerListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnet/hockeyapp/android/CrashManager;->submitStackTraces(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Lnet/hockeyapp/android/objects/CrashMetaData;)V

    .line 283
    return-void
.end method

.method public static submitStackTraces(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Lnet/hockeyapp/android/objects/CrashMetaData;)V
    .registers 24
    .param p1, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;
    .param p2, "crashMetaData"    # Lnet/hockeyapp/android/objects/CrashMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lnet/hockeyapp/android/CrashManagerListener;",
            "Lnet/hockeyapp/android/objects/CrashMetaData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->searchForStackTraces()[Ljava/lang/String;

    move-result-object v11

    .line 294
    .local v11, "list":[Ljava/lang/String;
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 296
    .local v15, "successful":Ljava/lang/Boolean;
    if-eqz v11, :cond_241

    array-length v0, v11

    move/from16 v18, v0

    if-lez v18, :cond_241

    .line 297
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Found "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    array-length v0, v11

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " stacktrace(s)."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    .line 299
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_31
    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_241

    .line 300
    const/16 v16, 0x0

    .line 303
    .local v16, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_3a
    aget-object v9, v11, v10

    .line 304
    .local v9, "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lnet/hockeyapp/android/CrashManager;->contentsOfFile(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 305
    .local v14, "stacktrace":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_145

    .line 308
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Transmitting crash data: \n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    .line 311
    const-string v18, ".stacktrace"

    const-string v19, ".user"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lnet/hockeyapp/android/CrashManager;->contentsOfFile(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 312
    .local v17, "userID":Ljava/lang/String;
    const-string v18, ".stacktrace"

    const-string v19, ".contact"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lnet/hockeyapp/android/CrashManager;->contentsOfFile(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "contact":Ljava/lang/String;
    if-eqz p2, :cond_a1

    .line 315
    invoke-virtual/range {p2 .. p2}, Lnet/hockeyapp/android/objects/CrashMetaData;->getUserID()Ljava/lang/String;

    move-result-object v6

    .line 316
    .local v6, "crashMetaDataUserID":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_96

    .line 317
    move-object/from16 v17, v6

    .line 319
    :cond_96
    invoke-virtual/range {p2 .. p2}, Lnet/hockeyapp/android/objects/CrashMetaData;->getUserEmail()Ljava/lang/String;

    move-result-object v5

    .line 320
    .local v5, "crashMetaDataContact":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_a1

    .line 321
    move-object v4, v5

    .line 326
    .end local v5    # "crashMetaDataContact":Ljava/lang/String;
    .end local v6    # "crashMetaDataUserID":Ljava/lang/String;
    :cond_a1
    const-string v18, ".stacktrace"

    const-string v19, ".description"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lnet/hockeyapp/android/CrashManager;->contentsOfFile(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "applicationLog":Ljava/lang/String;
    if-eqz p2, :cond_176

    invoke-virtual/range {p2 .. p2}, Lnet/hockeyapp/android/objects/CrashMetaData;->getUserDescription()Ljava/lang/String;

    move-result-object v7

    .line 328
    .local v7, "description":Ljava/lang/String;
    :goto_bb
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_dd

    .line 329
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_17a

    .line 330
    const-string v18, "%s\n\nLog:\n%s"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v7, v19, v20

    const/16 v20, 0x1

    aput-object v3, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 336
    :cond_dd
    :goto_dd
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 338
    .local v12, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v18, "raw"

    move-object/from16 v0, v18

    invoke-interface {v12, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v18, "userID"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v18, "contact"

    move-object/from16 v0, v18

    invoke-interface {v12, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v18, "description"

    move-object/from16 v0, v18

    invoke-interface {v12, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v18, "sdk"

    const-string v19, "HockeySDK"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v18, "sdk_version"

    const-string v19, "4.1.2"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    new-instance v18, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->getURLString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "POST"

    .line 346
    invoke-virtual/range {v18 .. v19}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->setRequestMethod(Ljava/lang/String;)Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    move-result-object v18

    .line 347
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->writeFormFields(Ljava/util/Map;)Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    move-result-object v18

    .line 348
    invoke-virtual/range {v18 .. v18}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->build()Ljava/net/HttpURLConnection;

    move-result-object v16

    .line 350
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    .line 352
    .local v13, "responseCode":I
    const/16 v18, 0xca

    move/from16 v0, v18

    if-eq v13, v0, :cond_13f

    const/16 v18, 0xc9

    move/from16 v0, v18

    if-ne v13, v0, :cond_18e

    :cond_13f
    const/16 v18, 0x1

    :goto_141
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_144} :catch_1ab
    .catchall {:try_start_3a .. :try_end_144} :catchall_1f8

    move-result-object v15

    .line 358
    .end local v3    # "applicationLog":Ljava/lang/String;
    .end local v4    # "contact":Ljava/lang/String;
    .end local v7    # "description":Ljava/lang/String;
    .end local v12    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "responseCode":I
    .end local v17    # "userID":Ljava/lang/String;
    :cond_145
    if-eqz v16, :cond_14a

    .line 359
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 361
    :cond_14a
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_191

    .line 362
    const-string v18, "Transmission succeeded"

    invoke-static/range {v18 .. v18}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    .line 363
    aget-object v18, v11, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lnet/hockeyapp/android/CrashManager;->deleteStackTrace(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    .line 365
    if-eqz p1, :cond_172

    .line 366
    invoke-virtual/range {p1 .. p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesSent()V

    .line 367
    aget-object v18, v11, v10

    invoke-virtual/range {p1 .. p1}, Lnet/hockeyapp/android/CrashManagerListener;->getMaxRetryAttempts()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lnet/hockeyapp/android/CrashManager;->deleteRetryCounter(Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V

    .line 299
    .end local v9    # "filename":Ljava/lang/String;
    .end local v14    # "stacktrace":Ljava/lang/String;
    :cond_172
    :goto_172
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_31

    .line 327
    .restart local v3    # "applicationLog":Ljava/lang/String;
    .restart local v4    # "contact":Ljava/lang/String;
    .restart local v9    # "filename":Ljava/lang/String;
    .restart local v14    # "stacktrace":Ljava/lang/String;
    .restart local v17    # "userID":Ljava/lang/String;
    :cond_176
    :try_start_176
    const-string v7, ""

    goto/16 :goto_bb

    .line 332
    .restart local v7    # "description":Ljava/lang/String;
    :cond_17a
    const-string v18, "Log:\n%s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v3, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_18b} :catch_1ab
    .catchall {:try_start_176 .. :try_end_18b} :catchall_1f8

    move-result-object v7

    goto/16 :goto_dd

    .line 352
    .restart local v12    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "responseCode":I
    :cond_18e
    const/16 v18, 0x0

    goto :goto_141

    .line 370
    .end local v3    # "applicationLog":Ljava/lang/String;
    .end local v4    # "contact":Ljava/lang/String;
    .end local v7    # "description":Ljava/lang/String;
    .end local v12    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "responseCode":I
    .end local v17    # "userID":Ljava/lang/String;
    :cond_191
    const-string v18, "Transmission failed, will retry on next register() call"

    invoke-static/range {v18 .. v18}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    .line 371
    if-eqz p1, :cond_172

    .line 372
    invoke-virtual/range {p1 .. p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesNotSent()V

    .line 373
    aget-object v18, v11, v10

    invoke-virtual/range {p1 .. p1}, Lnet/hockeyapp/android/CrashManagerListener;->getMaxRetryAttempts()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lnet/hockeyapp/android/CrashManager;->updateRetryCounter(Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V

    goto :goto_172

    .line 355
    .end local v9    # "filename":Ljava/lang/String;
    .end local v14    # "stacktrace":Ljava/lang/String;
    :catch_1ab
    move-exception v8

    .line 356
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1ac
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1af
    .catchall {:try_start_1ac .. :try_end_1af} :catchall_1f8

    .line 358
    if-eqz v16, :cond_1b4

    .line 359
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 361
    :cond_1b4
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_1dd

    .line 362
    const-string v18, "Transmission succeeded"

    invoke-static/range {v18 .. v18}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    .line 363
    aget-object v18, v11, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lnet/hockeyapp/android/CrashManager;->deleteStackTrace(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    .line 365
    if-eqz p1, :cond_172

    .line 366
    invoke-virtual/range {p1 .. p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesSent()V

    .line 367
    aget-object v18, v11, v10

    invoke-virtual/range {p1 .. p1}, Lnet/hockeyapp/android/CrashManagerListener;->getMaxRetryAttempts()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lnet/hockeyapp/android/CrashManager;->deleteRetryCounter(Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V

    goto :goto_172

    .line 370
    :cond_1dd
    const-string v18, "Transmission failed, will retry on next register() call"

    invoke-static/range {v18 .. v18}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    .line 371
    if-eqz p1, :cond_172

    .line 372
    invoke-virtual/range {p1 .. p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesNotSent()V

    .line 373
    aget-object v18, v11, v10

    invoke-virtual/range {p1 .. p1}, Lnet/hockeyapp/android/CrashManagerListener;->getMaxRetryAttempts()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lnet/hockeyapp/android/CrashManager;->updateRetryCounter(Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V

    goto/16 :goto_172

    .line 358
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_1f8
    move-exception v18

    if-eqz v16, :cond_1fe

    .line 359
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 361
    :cond_1fe
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_227

    .line 362
    const-string v19, "Transmission succeeded"

    invoke-static/range {v19 .. v19}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    .line 363
    aget-object v19, v11, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lnet/hockeyapp/android/CrashManager;->deleteStackTrace(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    .line 365
    if-eqz p1, :cond_226

    .line 366
    invoke-virtual/range {p1 .. p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesSent()V

    .line 367
    aget-object v19, v11, v10

    invoke-virtual/range {p1 .. p1}, Lnet/hockeyapp/android/CrashManagerListener;->getMaxRetryAttempts()I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lnet/hockeyapp/android/CrashManager;->deleteRetryCounter(Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V

    .line 373
    :cond_226
    :goto_226
    throw v18

    .line 370
    :cond_227
    const-string v19, "Transmission failed, will retry on next register() call"

    invoke-static/range {v19 .. v19}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    .line 371
    if-eqz p1, :cond_226

    .line 372
    invoke-virtual/range {p1 .. p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesNotSent()V

    .line 373
    aget-object v19, v11, v10

    invoke-virtual/range {p1 .. p1}, Lnet/hockeyapp/android/CrashManagerListener;->getMaxRetryAttempts()I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lnet/hockeyapp/android/CrashManager;->updateRetryCounter(Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V

    goto :goto_226

    .line 379
    .end local v10    # "index":I
    .end local v16    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_241
    return-void
.end method

.method private static updateRetryCounter(Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V
    .registers 10
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "maxRetryAttempts"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const/4 v6, 0x0

    .line 627
    const/4 v4, -0x1

    if-ne p2, v4, :cond_5

    .line 648
    :cond_4
    :goto_4
    return-void

    .line 631
    :cond_5
    const/4 v0, 0x0

    .line 632
    .local v0, "context":Landroid/content/Context;
    if-eqz p0, :cond_4

    .line 633
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "context":Landroid/content/Context;
    check-cast v0, Landroid/content/Context;

    .line 634
    .restart local v0    # "context":Landroid/content/Context;
    if-eqz v0, :cond_4

    .line 635
    const-string v4, "HockeySDK"

    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 636
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 638
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RETRY_COUNT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 639
    .local v3, "retryCounter":I
    if-lt v3, p2, :cond_3a

    .line 640
    invoke-static {p0, p1}, Lnet/hockeyapp/android/CrashManager;->deleteStackTrace(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    .line 641
    invoke-static {p0, p1, p2}, Lnet/hockeyapp/android/CrashManager;->deleteRetryCounter(Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V

    goto :goto_4

    .line 643
    :cond_3a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RETRY_COUNT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 644
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_4
.end method
