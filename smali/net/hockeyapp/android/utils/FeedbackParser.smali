.class public Lnet/hockeyapp/android/utils/FeedbackParser;
.super Ljava/lang/Object;
.source "FeedbackParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/utils/FeedbackParser$FeedbackParserHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Lnet/hockeyapp/android/utils/FeedbackParser$1;)V
    .registers 2
    .param p1, "x0"    # Lnet/hockeyapp/android/utils/FeedbackParser$1;

    .prologue
    .line 21
    invoke-direct {p0}, Lnet/hockeyapp/android/utils/FeedbackParser;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/hockeyapp/android/utils/FeedbackParser;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lnet/hockeyapp/android/utils/FeedbackParser$FeedbackParserHolder;->INSTANCE:Lnet/hockeyapp/android/utils/FeedbackParser;

    return-object v0
.end method


# virtual methods
.method public parseFeedbackResponse(Ljava/lang/String;)Lnet/hockeyapp/android/objects/FeedbackResponse;
    .registers 40
    .param p1, "feedbackResponseJson"    # Ljava/lang/String;

    .prologue
    .line 47
    const/16 v16, 0x0

    .line 48
    .local v16, "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    const/4 v10, 0x0

    .line 49
    .local v10, "feedback":Lnet/hockeyapp/android/objects/Feedback;
    if-eqz p1, :cond_283

    .line 51
    :try_start_5
    new-instance v23, Lorg/json/JSONObject;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 53
    .local v23, "jsonObject":Lorg/json/JSONObject;
    const-string v36, "feedback"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 54
    .local v15, "feedbackObject":Lorg/json/JSONObject;
    new-instance v11, Lnet/hockeyapp/android/objects/Feedback;

    invoke-direct {v11}, Lnet/hockeyapp/android/objects/Feedback;-><init>()V
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1d} :catch_2ad

    .line 57
    .end local v10    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .local v11, "feedback":Lnet/hockeyapp/android/objects/Feedback;
    :try_start_1d
    const-string v36, "messages"

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v25

    .line 58
    .local v25, "messagesArray":Lorg/json/JSONArray;
    const/16 v24, 0x0

    .line 60
    .local v24, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    const/4 v14, 0x0

    .line 61
    .local v14, "feedbackMessage":Lnet/hockeyapp/android/objects/FeedbackMessage;
    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONArray;->length()I

    move-result v36

    if-lez v36, :cond_207

    .line 62
    new-instance v24, Ljava/util/ArrayList;

    .end local v24    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .restart local v24    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_35
    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONArray;->length()I

    move-result v36

    move/from16 v0, v19

    move/from16 v1, v36

    if-ge v0, v1, :cond_207

    .line 65
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "subject"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v30

    .line 66
    .local v30, "subject":Ljava/lang/String;
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "text"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v31

    .line 67
    .local v31, "text":Ljava/lang/String;
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "oem"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v28

    .line 68
    .local v28, "oem":Ljava/lang/String;
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "model"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v26

    .line 69
    .local v26, "model":Ljava/lang/String;
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "os_version"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v29

    .line 70
    .local v29, "osVersion":Ljava/lang/String;
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "created_at"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 71
    .local v8, "createdAt":Ljava/lang/String;
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "id"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 72
    .local v20, "id":I
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "token"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v32

    .line 73
    .local v32, "token":Ljava/lang/String;
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "via"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v35

    .line 74
    .local v35, "via":I
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "user_string"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v34

    .line 75
    .local v34, "userString":Ljava/lang/String;
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "clean_text"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, "cleanText":Ljava/lang/String;
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "name"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v27

    .line 77
    .local v27, "name":Ljava/lang/String;
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "app_id"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "appId":Ljava/lang/String;
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "attachments"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 80
    .local v22, "jsonAttachments":Lorg/json/JSONArray;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 81
    .local v13, "feedbackAttachments":Ljava/util/List;, "Ljava/util/List<Lnet/hockeyapp/android/objects/FeedbackAttachment;>;"
    if-eqz v22, :cond_1bb

    .line 82
    new-instance v13, Ljava/util/ArrayList;

    .end local v13    # "feedbackAttachments":Ljava/util/List;, "Ljava/util/List<Lnet/hockeyapp/android/objects/FeedbackAttachment;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .restart local v13    # "feedbackAttachments":Ljava/util/List;, "Ljava/util/List<Lnet/hockeyapp/android/objects/FeedbackAttachment;>;"
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_13c
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v36

    move/from16 v0, v21

    move/from16 v1, v36

    if-ge v0, v1, :cond_1bb

    .line 85
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "id"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 86
    .local v4, "attachmentId":I
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "feedback_message_id"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 87
    .local v5, "attachmentMessageId":I
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "file_name"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 88
    .local v18, "filename":Ljava/lang/String;
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "url"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 89
    .local v33, "url":Ljava/lang/String;
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "created_at"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "attachmentCreatedAt":Ljava/lang/String;
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "updated_at"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, "attachmentUpdatedAt":Ljava/lang/String;
    new-instance v12, Lnet/hockeyapp/android/objects/FeedbackAttachment;

    invoke-direct {v12}, Lnet/hockeyapp/android/objects/FeedbackAttachment;-><init>()V

    .line 93
    .local v12, "feedbackAttachment":Lnet/hockeyapp/android/objects/FeedbackAttachment;
    invoke-virtual {v12, v4}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->setId(I)V

    .line 94
    invoke-virtual {v12, v5}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->setMessageId(I)V

    .line 95
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->setFilename(Ljava/lang/String;)V

    .line 96
    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->setUrl(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v12, v3}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->setCreatedAt(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v12, v6}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->setUpdatedAt(Ljava/lang/String;)V

    .line 99
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v21, v21, 0x1

    goto :goto_13c

    .line 103
    .end local v3    # "attachmentCreatedAt":Ljava/lang/String;
    .end local v4    # "attachmentId":I
    .end local v5    # "attachmentMessageId":I
    .end local v6    # "attachmentUpdatedAt":Ljava/lang/String;
    .end local v12    # "feedbackAttachment":Lnet/hockeyapp/android/objects/FeedbackAttachment;
    .end local v18    # "filename":Ljava/lang/String;
    .end local v21    # "j":I
    .end local v33    # "url":Ljava/lang/String;
    :cond_1bb
    new-instance v14, Lnet/hockeyapp/android/objects/FeedbackMessage;

    .end local v14    # "feedbackMessage":Lnet/hockeyapp/android/objects/FeedbackMessage;
    invoke-direct {v14}, Lnet/hockeyapp/android/objects/FeedbackMessage;-><init>()V

    .line 104
    .restart local v14    # "feedbackMessage":Lnet/hockeyapp/android/objects/FeedbackMessage;
    invoke-virtual {v14, v2}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setAppId(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v14, v7}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setCleanText(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v14, v8}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setCreatedAt(Ljava/lang/String;)V

    .line 107
    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setId(I)V

    .line 108
    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setModel(Ljava/lang/String;)V

    .line 109
    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setName(Ljava/lang/String;)V

    .line 110
    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setOem(Ljava/lang/String;)V

    .line 111
    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setOsVersion(Ljava/lang/String;)V

    .line 112
    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setSubjec(Ljava/lang/String;)V

    .line 113
    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setText(Ljava/lang/String;)V

    .line 114
    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setToken(Ljava/lang/String;)V

    .line 115
    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setUserString(Ljava/lang/String;)V

    .line 116
    move/from16 v0, v35

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setVia(I)V

    .line 117
    invoke-virtual {v14, v13}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setFeedbackAttachments(Ljava/util/List;)V

    .line 118
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_35

    .line 122
    .end local v2    # "appId":Ljava/lang/String;
    .end local v7    # "cleanText":Ljava/lang/String;
    .end local v8    # "createdAt":Ljava/lang/String;
    .end local v13    # "feedbackAttachments":Ljava/util/List;, "Ljava/util/List<Lnet/hockeyapp/android/objects/FeedbackAttachment;>;"
    .end local v19    # "i":I
    .end local v20    # "id":I
    .end local v22    # "jsonAttachments":Lorg/json/JSONArray;
    .end local v26    # "model":Ljava/lang/String;
    .end local v27    # "name":Ljava/lang/String;
    .end local v28    # "oem":Ljava/lang/String;
    .end local v29    # "osVersion":Ljava/lang/String;
    .end local v30    # "subject":Ljava/lang/String;
    .end local v31    # "text":Ljava/lang/String;
    .end local v32    # "token":Ljava/lang/String;
    .end local v34    # "userString":Ljava/lang/String;
    .end local v35    # "via":I
    :cond_207
    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lnet/hockeyapp/android/objects/Feedback;->setMessages(Ljava/util/ArrayList;)V
    :try_end_20c
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_20c} :catch_289

    .line 125
    :try_start_20c
    const-string v36, "name"

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lnet/hockeyapp/android/objects/Feedback;->setName(Ljava/lang/String;)V
    :try_end_21d
    .catch Lorg/json/JSONException; {:try_start_20c .. :try_end_21d} :catch_284

    .line 131
    :goto_21d
    :try_start_21d
    const-string v36, "email"

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lnet/hockeyapp/android/objects/Feedback;->setEmail(Ljava/lang/String;)V
    :try_end_22e
    .catch Lorg/json/JSONException; {:try_start_21d .. :try_end_22e} :catch_28f

    .line 137
    :goto_22e
    :try_start_22e
    const-string v36, "id"

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v11, v0}, Lnet/hockeyapp/android/objects/Feedback;->setId(I)V
    :try_end_23b
    .catch Lorg/json/JSONException; {:try_start_22e .. :try_end_23b} :catch_294

    .line 143
    :goto_23b
    :try_start_23b
    const-string v36, "created_at"

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lnet/hockeyapp/android/objects/Feedback;->setCreatedAt(Ljava/lang/String;)V
    :try_end_24c
    .catch Lorg/json/JSONException; {:try_start_23b .. :try_end_24c} :catch_299

    .line 148
    :goto_24c
    :try_start_24c
    new-instance v17, Lnet/hockeyapp/android/objects/FeedbackResponse;

    invoke-direct/range {v17 .. v17}, Lnet/hockeyapp/android/objects/FeedbackResponse;-><init>()V
    :try_end_251
    .catch Lorg/json/JSONException; {:try_start_24c .. :try_end_251} :catch_289

    .line 149
    .end local v16    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    .local v17, "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    :try_start_251
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lnet/hockeyapp/android/objects/FeedbackResponse;->setFeedback(Lnet/hockeyapp/android/objects/Feedback;)V
    :try_end_256
    .catch Lorg/json/JSONException; {:try_start_251 .. :try_end_256} :catch_2a3

    .line 151
    :try_start_256
    const-string v36, "status"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/objects/FeedbackResponse;->setStatus(Ljava/lang/String;)V
    :try_end_26b
    .catch Lorg/json/JSONException; {:try_start_256 .. :try_end_26b} :catch_29e

    .line 158
    :goto_26b
    :try_start_26b
    const-string v36, "token"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/objects/FeedbackResponse;->setToken(Ljava/lang/String;)V
    :try_end_280
    .catch Lorg/json/JSONException; {:try_start_26b .. :try_end_280} :catch_2a8

    :goto_280
    move-object v10, v11

    .end local v11    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .restart local v10    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    move-object/from16 v16, v17

    .line 167
    .end local v14    # "feedbackMessage":Lnet/hockeyapp/android/objects/FeedbackMessage;
    .end local v15    # "feedbackObject":Lorg/json/JSONObject;
    .end local v17    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    .end local v23    # "jsonObject":Lorg/json/JSONObject;
    .end local v24    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    .end local v25    # "messagesArray":Lorg/json/JSONArray;
    .restart local v16    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    :cond_283
    :goto_283
    return-object v16

    .line 126
    .end local v10    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .restart local v11    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .restart local v14    # "feedbackMessage":Lnet/hockeyapp/android/objects/FeedbackMessage;
    .restart local v15    # "feedbackObject":Lorg/json/JSONObject;
    .restart local v23    # "jsonObject":Lorg/json/JSONObject;
    .restart local v24    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    .restart local v25    # "messagesArray":Lorg/json/JSONArray;
    :catch_284
    move-exception v9

    .line 127
    .local v9, "e":Lorg/json/JSONException;
    :try_start_285
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_288
    .catch Lorg/json/JSONException; {:try_start_285 .. :try_end_288} :catch_289

    goto :goto_21d

    .line 162
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v14    # "feedbackMessage":Lnet/hockeyapp/android/objects/FeedbackMessage;
    .end local v24    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    .end local v25    # "messagesArray":Lorg/json/JSONArray;
    :catch_289
    move-exception v9

    move-object v10, v11

    .line 163
    .end local v11    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .end local v15    # "feedbackObject":Lorg/json/JSONObject;
    .end local v23    # "jsonObject":Lorg/json/JSONObject;
    .restart local v9    # "e":Lorg/json/JSONException;
    .restart local v10    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    :goto_28b
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_283

    .line 132
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v10    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .restart local v11    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .restart local v14    # "feedbackMessage":Lnet/hockeyapp/android/objects/FeedbackMessage;
    .restart local v15    # "feedbackObject":Lorg/json/JSONObject;
    .restart local v23    # "jsonObject":Lorg/json/JSONObject;
    .restart local v24    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    .restart local v25    # "messagesArray":Lorg/json/JSONArray;
    :catch_28f
    move-exception v9

    .line 133
    .restart local v9    # "e":Lorg/json/JSONException;
    :try_start_290
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_22e

    .line 138
    .end local v9    # "e":Lorg/json/JSONException;
    :catch_294
    move-exception v9

    .line 139
    .restart local v9    # "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_23b

    .line 144
    .end local v9    # "e":Lorg/json/JSONException;
    :catch_299
    move-exception v9

    .line 145
    .restart local v9    # "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_29d
    .catch Lorg/json/JSONException; {:try_start_290 .. :try_end_29d} :catch_289

    goto :goto_24c

    .line 152
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v16    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    .restart local v17    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    :catch_29e
    move-exception v9

    .line 153
    .restart local v9    # "e":Lorg/json/JSONException;
    :try_start_29f
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_26b

    .line 162
    .end local v9    # "e":Lorg/json/JSONException;
    :catch_2a3
    move-exception v9

    move-object v10, v11

    .end local v11    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .restart local v10    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    move-object/from16 v16, v17

    .end local v17    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    .restart local v16    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    goto :goto_28b

    .line 159
    .end local v10    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .end local v16    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    .restart local v11    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .restart local v17    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    :catch_2a8
    move-exception v9

    .line 160
    .restart local v9    # "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2ac
    .catch Lorg/json/JSONException; {:try_start_29f .. :try_end_2ac} :catch_2a3

    goto :goto_280

    .line 162
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v11    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .end local v14    # "feedbackMessage":Lnet/hockeyapp/android/objects/FeedbackMessage;
    .end local v15    # "feedbackObject":Lorg/json/JSONObject;
    .end local v17    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    .end local v23    # "jsonObject":Lorg/json/JSONObject;
    .end local v24    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    .end local v25    # "messagesArray":Lorg/json/JSONArray;
    .restart local v10    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .restart local v16    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    :catch_2ad
    move-exception v9

    goto :goto_28b
.end method
