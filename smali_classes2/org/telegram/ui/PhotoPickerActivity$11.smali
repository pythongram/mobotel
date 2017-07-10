.class Lorg/telegram/ui/PhotoPickerActivity$11;
.super Landroid/os/AsyncTask;
.source "PhotoPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoPickerActivity;->searchBingImages(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private canRetry:Z

.field final synthetic this$0:Lorg/telegram/ui/PhotoPickerActivity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 875
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    iput-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 877
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->canRetry:Z

    return-void
.end method

.method private downloadUrlContent(Ljava/lang/String;)Ljava/lang/String;
    .registers 23
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 880
    const/4 v3, 0x1

    .line 881
    .local v3, "canRetry":Z
    const/4 v11, 0x0

    .line 882
    .local v11, "httpConnectionStream":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 883
    .local v7, "done":Z
    const/4 v15, 0x0

    .line 884
    .local v15, "result":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 886
    .local v10, "httpConnection":Ljava/net/URLConnection;
    :try_start_5
    new-instance v8, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 887
    .local v8, "downloadUrl":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    .line 888
    const-string v18, "Ocp-Apim-Subscription-Key"

    sget-object v19, Lorg/telegram/messenger/BuildVars;->BING_SEARCH_KEY:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const-string v18, "User-Agent"

    const-string v19, "Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/20150101 Firefox/47.0 (Chrome)"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    const-string v18, "Accept-Language"

    const-string v19, "en-us,en;q=0.5"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const-string v18, "Accept"

    const-string v19, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const-string v18, "Accept-Charset"

    const-string v19, "ISO-8859-1,utf-8;q=0.7,*;q=0.7"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    const/16 v18, 0x1388

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 894
    const/16 v18, 0x1388

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 895
    instance-of v0, v10, Ljava/net/HttpURLConnection;

    move/from16 v18, v0

    if-eqz v18, :cond_d9

    .line 896
    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v12, v0

    .line 897
    .local v12, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 898
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    .line 899
    .local v17, "status":I
    const/16 v18, 0x12e

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_82

    const/16 v18, 0x12d

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_82

    const/16 v18, 0x12f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d9

    .line 900
    :cond_82
    const-string v18, "Location"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 901
    .local v13, "newUrl":Ljava/lang/String;
    const-string v18, "Set-Cookie"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 902
    .local v5, "cookies":Ljava/lang/String;
    new-instance v8, Ljava/net/URL;

    .end local v8    # "downloadUrl":Ljava/net/URL;
    invoke-direct {v8, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 903
    .restart local v8    # "downloadUrl":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    .line 904
    const-string v18, "Cookie"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    const-string v18, "Ocp-Apim-Subscription-Key"

    sget-object v19, Lorg/telegram/messenger/BuildVars;->BING_SEARCH_KEY:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    const-string v18, "User-Agent"

    const-string v19, "Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/20150101 Firefox/47.0 (Chrome)"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const-string v18, "Accept-Language"

    const-string v19, "en-us,en;q=0.5"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    const-string v18, "Accept"

    const-string v19, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    const-string v18, "Accept-Charset"

    const-string v19, "ISO-8859-1,utf-8;q=0.7,*;q=0.7"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    .end local v5    # "cookies":Ljava/lang/String;
    .end local v12    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v13    # "newUrl":Ljava/lang/String;
    .end local v17    # "status":I
    :cond_d9
    invoke-virtual {v10}, Ljava/net/URLConnection;->connect()V

    .line 913
    invoke-virtual {v10}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_df
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_df} :catch_121

    move-result-object v11

    .line 931
    .end local v8    # "downloadUrl":Ljava/net/URL;
    :goto_e0
    if-eqz v3, :cond_11a

    .line 933
    if-eqz v10, :cond_102

    :try_start_e4
    instance-of v0, v10, Ljava/net/HttpURLConnection;

    move/from16 v18, v0

    if-eqz v18, :cond_102

    .line 934
    check-cast v10, Ljava/net/HttpURLConnection;

    .end local v10    # "httpConnection":Ljava/net/URLConnection;
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_ef} :catch_15d

    move-result v4

    .line 935
    .local v4, "code":I
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-eq v4, v0, :cond_102

    const/16 v18, 0xca

    move/from16 v0, v18

    if-eq v4, v0, :cond_102

    const/16 v18, 0x130

    move/from16 v0, v18

    if-eq v4, v0, :cond_102

    .line 943
    .end local v4    # "code":I
    :cond_102
    :goto_102
    if-eqz v11, :cond_115

    .line 945
    const v18, 0x8000

    :try_start_107
    move/from16 v0, v18

    new-array v6, v0, [B
    :try_end_10b
    .catch Ljava/lang/Throwable; {:try_start_107 .. :try_end_10b} :catch_19b

    .local v6, "data":[B
    move-object/from16 v16, v15

    .line 947
    .end local v15    # "result":Ljava/lang/StringBuilder;
    .local v16, "result":Ljava/lang/StringBuilder;
    :goto_10d
    :try_start_10d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/PhotoPickerActivity$11;->isCancelled()Z
    :try_end_110
    .catch Ljava/lang/Throwable; {:try_start_10d .. :try_end_110} :catch_1ab

    move-result v18

    if-eqz v18, :cond_162

    move-object/from16 v15, v16

    .line 974
    .end local v6    # "data":[B
    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v15    # "result":Ljava/lang/StringBuilder;
    :cond_115
    :goto_115
    if-eqz v11, :cond_11a

    .line 975
    :try_start_117
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_11a
    .catch Ljava/lang/Throwable; {:try_start_117 .. :try_end_11a} :catch_1a1

    .line 981
    :cond_11a
    :goto_11a
    if-eqz v7, :cond_1a7

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_120
    return-object v18

    .line 914
    .restart local v10    # "httpConnection":Ljava/net/URLConnection;
    :catch_121
    move-exception v9

    .line 915
    .local v9, "e":Ljava/lang/Throwable;
    instance-of v0, v9, Ljava/net/SocketTimeoutException;

    move/from16 v18, v0

    if-eqz v18, :cond_133

    .line 916
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isNetworkOnline()Z

    move-result v18

    if-eqz v18, :cond_12f

    .line 917
    const/4 v3, 0x0

    .line 928
    :cond_12f
    :goto_12f
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_e0

    .line 919
    :cond_133
    instance-of v0, v9, Ljava/net/UnknownHostException;

    move/from16 v18, v0

    if-eqz v18, :cond_13b

    .line 920
    const/4 v3, 0x0

    goto :goto_12f

    .line 921
    :cond_13b
    instance-of v0, v9, Ljava/net/SocketException;

    move/from16 v18, v0

    if-eqz v18, :cond_155

    .line 922
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_12f

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v18

    const-string v19, "ECONNRESET"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_12f

    .line 923
    const/4 v3, 0x0

    goto :goto_12f

    .line 925
    :cond_155
    instance-of v0, v9, Ljava/io/FileNotFoundException;

    move/from16 v18, v0

    if-eqz v18, :cond_12f

    .line 926
    const/4 v3, 0x0

    goto :goto_12f

    .line 939
    .end local v9    # "e":Ljava/lang/Throwable;
    .end local v10    # "httpConnection":Ljava/net/URLConnection;
    :catch_15d
    move-exception v9

    .line 940
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_102

    .line 951
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v15    # "result":Ljava/lang/StringBuilder;
    .restart local v6    # "data":[B
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    :cond_162
    :try_start_162
    invoke-virtual {v11, v6}, Ljava/io/InputStream;->read([B)I

    move-result v14

    .line 952
    .local v14, "read":I
    if-lez v14, :cond_186

    .line 953
    if-nez v16, :cond_1b1

    .line 954
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_16f} :catch_193
    .catch Ljava/lang/Throwable; {:try_start_162 .. :try_end_16f} :catch_1ab

    .line 956
    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v15    # "result":Ljava/lang/StringBuilder;
    :goto_16f
    :try_start_16f
    new-instance v18, Ljava/lang/String;

    const/16 v19, 0x0

    const-string v20, "UTF-8"

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v6, v1, v14, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_183} :catch_1af
    .catch Ljava/lang/Throwable; {:try_start_16f .. :try_end_183} :catch_19b

    move-object/from16 v16, v15

    .line 966
    .end local v15    # "result":Ljava/lang/StringBuilder;
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    goto :goto_10d

    .line 957
    :cond_186
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_190

    .line 958
    const/4 v7, 0x1

    move-object/from16 v15, v16

    .line 959
    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v15    # "result":Ljava/lang/StringBuilder;
    goto :goto_115

    .end local v15    # "result":Ljava/lang/StringBuilder;
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    :cond_190
    move-object/from16 v15, v16

    .line 961
    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v15    # "result":Ljava/lang/StringBuilder;
    goto :goto_115

    .line 963
    .end local v14    # "read":I
    .end local v15    # "result":Ljava/lang/StringBuilder;
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    :catch_193
    move-exception v9

    move-object/from16 v15, v16

    .line 964
    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v9    # "e":Ljava/lang/Exception;
    .restart local v15    # "result":Ljava/lang/StringBuilder;
    :goto_196
    :try_start_196
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_199
    .catch Ljava/lang/Throwable; {:try_start_196 .. :try_end_199} :catch_19b

    goto/16 :goto_115

    .line 968
    .end local v6    # "data":[B
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_19b
    move-exception v9

    .line 969
    .local v9, "e":Ljava/lang/Throwable;
    :goto_19c
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_115

    .line 977
    .end local v9    # "e":Ljava/lang/Throwable;
    :catch_1a1
    move-exception v9

    .line 978
    .restart local v9    # "e":Ljava/lang/Throwable;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_11a

    .line 981
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_1a7
    const/16 v18, 0x0

    goto/16 :goto_120

    .line 968
    .end local v15    # "result":Ljava/lang/StringBuilder;
    .restart local v6    # "data":[B
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    :catch_1ab
    move-exception v9

    move-object/from16 v15, v16

    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v15    # "result":Ljava/lang/StringBuilder;
    goto :goto_19c

    .line 963
    .restart local v14    # "read":I
    :catch_1af
    move-exception v9

    goto :goto_196

    .end local v15    # "result":Ljava/lang/StringBuilder;
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    :cond_1b1
    move-object/from16 v15, v16

    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v15    # "result":Ljava/lang/StringBuilder;
    goto :goto_16f
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 875
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/PhotoPickerActivity$11;->doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;
    .registers 6
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 985
    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->val$url:Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/telegram/ui/PhotoPickerActivity$11;->downloadUrlContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 986
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoPickerActivity$11;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 994
    :goto_d
    return-object v2

    .line 990
    :cond_e
    :try_start_e
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_15

    move-object v2, v3

    goto :goto_d

    .line 991
    :catch_15
    move-exception v1

    .line 992
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 875
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/PhotoPickerActivity$11;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .registers 13
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 999
    const/4 v2, 0x0

    .line 1000
    .local v2, "addedCount":I
    if-eqz p1, :cond_d8

    .line 1002
    :try_start_5
    const-string v10, "value"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 1003
    .local v7, "result":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .line 1004
    .local v1, "added":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_d
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_82

    move-result v10

    if-ge v0, v10, :cond_ce

    .line 1006
    :try_start_13
    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 1007
    .local v6, "object":Lorg/json/JSONObject;
    const-string v10, "contentUrl"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1008
    .local v5, "id":Ljava/lang/String;
    iget-object v10, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResultKeys:Ljava/util/HashMap;
    invoke-static {v10}, Lorg/telegram/ui/PhotoPickerActivity;->access$100(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_30

    .line 1004
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "object":Lorg/json/JSONObject;
    :goto_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1011
    .restart local v5    # "id":Ljava/lang/String;
    .restart local v6    # "object":Lorg/json/JSONObject;
    :cond_30
    new-instance v3, Lorg/telegram/messenger/MediaController$SearchImage;

    invoke-direct {v3}, Lorg/telegram/messenger/MediaController$SearchImage;-><init>()V

    .line 1012
    .local v3, "bingImage":Lorg/telegram/messenger/MediaController$SearchImage;
    iput-object v5, v3, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    .line 1013
    const-string v10, "width"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v3, Lorg/telegram/messenger/MediaController$SearchImage;->width:I

    .line 1014
    const-string v10, "height"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v3, Lorg/telegram/messenger/MediaController$SearchImage;->height:I

    .line 1015
    const-string v10, "contentSize"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v3, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    .line 1016
    const-string v10, "contentUrl"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    .line 1017
    const-string v10, "thumbnailUrl"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    .line 1018
    iget-object v10, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    iget-object v10, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResultKeys:Ljava/util/HashMap;
    invoke-static {v10}, Lorg/telegram/ui/PhotoPickerActivity;->access$100(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_79} :catch_7d

    .line 1020
    add-int/lit8 v2, v2, 0x1

    .line 1021
    const/4 v1, 0x1

    goto :goto_2d

    .line 1022
    .end local v3    # "bingImage":Lorg/telegram/messenger/MediaController$SearchImage;
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "object":Lorg/json/JSONObject;
    :catch_7d
    move-exception v4

    .line 1023
    .local v4, "e":Ljava/lang/Exception;
    :try_start_7e
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_2d

    .line 1027
    .end local v0    # "a":I
    .end local v1    # "added":Z
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "result":Lorg/json/JSONArray;
    :catch_82
    move-exception v4

    .line 1028
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1030
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_86
    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # setter for: Lorg/telegram/ui/PhotoPickerActivity;->searching:Z
    invoke-static {v8, v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$502(Lorg/telegram/ui/PhotoPickerActivity;Z)Z

    .line 1035
    :goto_8b
    if-eqz v2, :cond_e3

    .line 1036
    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;
    invoke-static {v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$2200(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9, v2}, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->notifyItemRangeInserted(II)V

    .line 1040
    :cond_a0
    :goto_a0
    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searching:Z
    invoke-static {v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$500(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v8

    if-eqz v8, :cond_b4

    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_c4

    :cond_b4
    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->loadingRecent:Z
    invoke-static {v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$2600(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v8

    if-eqz v8, :cond_101

    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;
    invoke-static {v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$200(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_101

    .line 1041
    :cond_c4
    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$900(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    .line 1045
    :goto_cd
    return-void

    .line 1026
    .restart local v0    # "a":I
    .restart local v1    # "added":Z
    .restart local v7    # "result":Lorg/json/JSONArray;
    :cond_ce
    :try_start_ce
    iget-object v10, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    if-nez v1, :cond_d6

    :goto_d2
    # setter for: Lorg/telegram/ui/PhotoPickerActivity;->bingSearchEndReached:Z
    invoke-static {v10, v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$302(Lorg/telegram/ui/PhotoPickerActivity;Z)Z
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d5} :catch_82

    goto :goto_86

    :cond_d6
    move v8, v9

    goto :goto_d2

    .line 1032
    .end local v0    # "a":I
    .end local v1    # "added":Z
    .end local v7    # "result":Lorg/json/JSONArray;
    :cond_d8
    iget-object v10, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # setter for: Lorg/telegram/ui/PhotoPickerActivity;->bingSearchEndReached:Z
    invoke-static {v10, v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$302(Lorg/telegram/ui/PhotoPickerActivity;Z)Z

    .line 1033
    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # setter for: Lorg/telegram/ui/PhotoPickerActivity;->searching:Z
    invoke-static {v8, v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$502(Lorg/telegram/ui/PhotoPickerActivity;Z)Z

    goto :goto_8b

    .line 1037
    :cond_e3
    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->giphySearchEndReached:Z
    invoke-static {v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$400(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v8

    if-eqz v8, :cond_a0

    .line 1038
    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;
    invoke-static {v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$2200(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->notifyItemRemoved(I)V

    goto :goto_a0

    .line 1043
    :cond_101
    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$900(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    goto :goto_cd
.end method
