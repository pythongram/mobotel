.class public abstract Lnet/hockeyapp/android/tasks/ConnectionTask;
.super Landroid/os/AsyncTask;
.source "ConnectionTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    .local p0, "this":Lnet/hockeyapp/android/tasks/ConnectionTask;, "Lnet/hockeyapp/android/tasks/ConnectionTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 29
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x400

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 30
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 34
    .local v1, "line":Ljava/lang/String;
    :goto_12
    :try_start_12
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_2e} :catch_2f
    .catchall {:try_start_12 .. :try_end_2e} :catchall_49

    goto :goto_12

    .line 37
    :catch_2f
    move-exception v0

    .line 38
    .local v0, "e":Ljava/io/IOException;
    :try_start_30
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_49

    .line 41
    :try_start_33
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_44

    .line 46
    .end local v0    # "e":Ljava/io/IOException;
    :goto_36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 41
    :cond_3b
    :try_start_3b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_36

    .line 42
    :catch_3f
    move-exception v0

    .line 43
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_36

    .line 42
    :catch_44
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_36

    .line 40
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_49
    move-exception v4

    .line 41
    :try_start_4a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    .line 44
    :goto_4d
    throw v4

    .line 42
    :catch_4e
    move-exception v0

    .line 43
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4d
.end method

.method protected static getStringFromConnection(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 4
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 22
    .local v0, "inputStream":Ljava/io/InputStream;
    invoke-static {v0}, Lnet/hockeyapp/android/tasks/ConnectionTask;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "jsonString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 25
    return-object v1
.end method
