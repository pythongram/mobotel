.class Lorg/telegram/ui/NotificationsSettingsActivity$3;
.super Ljava/lang/Object;
.source "NotificationsSettingsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/NotificationsSettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/NotificationsSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/NotificationsSettingsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 207
    iput-object p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 29
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 210
    const/16 v21, 0x0

    .line 211
    .local v21, "enabled":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messageAlertRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupAlertRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_94

    .line 212
    :cond_1a
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 213
    .local v23, "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 214
    .local v20, "editor":Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messageAlertRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_70

    .line 215
    const-string v2, "EnableAll"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 216
    const-string v3, "EnableAll"

    if-nez v21, :cond_6e

    const/4 v2, 0x1

    :goto_41
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 221
    :cond_46
    :goto_46
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 222
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupAlertRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_92

    const/4 v2, 0x1

    :goto_5a
    invoke-virtual {v3, v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->updateServerNotificationsSettings(Z)V

    .line 470
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_5d
    :goto_5d
    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_6d

    .line 471
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v21, :cond_734

    const/4 v2, 0x1

    :goto_68
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 473
    :cond_6d
    return-void

    .line 216
    .restart local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    .restart local p1    # "view":Landroid/view/View;
    :cond_6e
    const/4 v2, 0x0

    goto :goto_41

    .line 217
    :cond_70
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupAlertRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_46

    .line 218
    const-string v2, "EnableGroup"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 219
    const-string v3, "EnableGroup"

    if-nez v21, :cond_90

    const/4 v2, 0x1

    :goto_8a
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_46

    :cond_90
    const/4 v2, 0x0

    goto :goto_8a

    .line 222
    :cond_92
    const/4 v2, 0x0

    goto :goto_5a

    .line 223
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_94
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messagePreviewRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_ac

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupPreviewRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_117

    .line 224
    :cond_ac
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 225
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 226
    .restart local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messagePreviewRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_f3

    .line 227
    const-string v2, "EnablePreviewAll"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 228
    const-string v3, "EnablePreviewAll"

    if-nez v21, :cond_f1

    const/4 v2, 0x1

    :goto_d3
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 233
    :cond_d8
    :goto_d8
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupPreviewRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_115

    const/4 v2, 0x1

    :goto_ec
    invoke-virtual {v3, v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->updateServerNotificationsSettings(Z)V

    goto/16 :goto_5d

    .line 228
    :cond_f1
    const/4 v2, 0x0

    goto :goto_d3

    .line 229
    :cond_f3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupPreviewRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_d8

    .line 230
    const-string v2, "EnablePreviewGroup"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 231
    const-string v3, "EnablePreviewGroup"

    if-nez v21, :cond_113

    const/4 v2, 0x1

    :goto_10d
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_d8

    :cond_113
    const/4 v2, 0x0

    goto :goto_10d

    .line 234
    :cond_115
    const/4 v2, 0x0

    goto :goto_ec

    .line 235
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_117
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messageSoundRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_13b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupSoundRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_13b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->callsRingtoneRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_25a

    .line 237
    :cond_13b
    :try_start_13b
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 238
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    new-instance v25, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .local v25, "tmpIntent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.ringtone.TYPE"

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->callsRingtoneRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1e3

    const/4 v2, 0x1

    :goto_15c
    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 241
    const-string v3, "android.intent.extra.ringtone.DEFAULT_URI"

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->callsRingtoneRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1e6

    const/4 v2, 0x1

    :goto_178
    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 242
    const/16 v16, 0x0

    .line 244
    .local v16, "currentSound":Landroid/net/Uri;
    const/16 v17, 0x0

    .line 245
    .local v17, "defaultPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->callsRingtoneRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1e8

    sget-object v18, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 246
    .local v18, "defaultUri":Landroid/net/Uri;
    :goto_193
    if-eqz v18, :cond_199

    .line 247
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v17

    .line 250
    :cond_199
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messageSoundRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1f0

    .line 251
    const-string v2, "GlobalSoundPath"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 252
    .local v22, "path":Ljava/lang/String;
    if-eqz v22, :cond_1c7

    const-string v2, "NoSound"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c7

    .line 253
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1eb

    .line 254
    move-object/from16 v16, v18

    .line 278
    .end local v22    # "path":Ljava/lang/String;
    :cond_1c7
    :goto_1c7
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v0, v25

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1db
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_1db} :catch_1dd

    goto/16 :goto_5d

    .line 280
    .end local v16    # "currentSound":Landroid/net/Uri;
    .end local v17    # "defaultPath":Ljava/lang/String;
    .end local v18    # "defaultUri":Landroid/net/Uri;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    .end local v25    # "tmpIntent":Landroid/content/Intent;
    :catch_1dd
    move-exception v19

    .line 281
    .local v19, "e":Ljava/lang/Exception;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5d

    .line 239
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    .restart local v25    # "tmpIntent":Landroid/content/Intent;
    :cond_1e3
    const/4 v2, 0x2

    goto/16 :goto_15c

    .line 241
    :cond_1e6
    const/4 v2, 0x2

    goto :goto_178

    .line 245
    .restart local v16    # "currentSound":Landroid/net/Uri;
    .restart local v17    # "defaultPath":Ljava/lang/String;
    :cond_1e8
    :try_start_1e8
    sget-object v18, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_193

    .line 256
    .restart local v18    # "defaultUri":Landroid/net/Uri;
    .restart local v22    # "path":Ljava/lang/String;
    :cond_1eb
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    goto :goto_1c7

    .line 259
    .end local v22    # "path":Ljava/lang/String;
    :cond_1f0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupSoundRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_224

    .line 260
    const-string v2, "GroupSoundPath"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 261
    .restart local v22    # "path":Ljava/lang/String;
    if-eqz v22, :cond_1c7

    const-string v2, "NoSound"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c7

    .line 262
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21f

    .line 263
    move-object/from16 v16, v18

    goto :goto_1c7

    .line 265
    :cond_21f
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    goto :goto_1c7

    .line 268
    .end local v22    # "path":Ljava/lang/String;
    :cond_224
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->callsRingtoneRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1c7

    .line 269
    const-string v2, "CallsRingtonfePath"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 270
    .restart local v22    # "path":Ljava/lang/String;
    if-eqz v22, :cond_1c7

    const-string v2, "NoSound"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c7

    .line 271
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_254

    .line 272
    move-object/from16 v16, v18

    goto/16 :goto_1c7

    .line 274
    :cond_254
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_257
    .catch Ljava/lang/Exception; {:try_start_1e8 .. :try_end_257} :catch_1dd

    move-result-object v16

    goto/16 :goto_1c7

    .line 283
    .end local v16    # "currentSound":Landroid/net/Uri;
    .end local v17    # "defaultPath":Ljava/lang/String;
    .end local v18    # "defaultUri":Landroid/net/Uri;
    .end local v22    # "path":Ljava/lang/String;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    .end local v25    # "tmpIntent":Landroid/content/Intent;
    :cond_25a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->resetNotificationsRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_28f

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->reseting:Z
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$800(Lorg/telegram/ui/NotificationsSettingsActivity;)Z

    move-result v2

    if-nez v2, :cond_6d

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    const/4 v3, 0x1

    # setter for: Lorg/telegram/ui/NotificationsSettingsActivity;->reseting:Z
    invoke-static {v2, v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$802(Lorg/telegram/ui/NotificationsSettingsActivity;Z)Z

    .line 288
    new-instance v24, Lorg/telegram/tgnet/TLRPC$TL_account_resetNotifySettings;

    invoke-direct/range {v24 .. v24}, Lorg/telegram/tgnet/TLRPC$TL_account_resetNotifySettings;-><init>()V

    .line 289
    .local v24, "req":Lorg/telegram/tgnet/TLRPC$TL_account_resetNotifySettings;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/NotificationsSettingsActivity$3$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/NotificationsSettingsActivity$3$1;-><init>(Lorg/telegram/ui/NotificationsSettingsActivity$3;)V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_5d

    .line 310
    .end local v24    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_resetNotifySettings;
    :cond_28f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->inappSoundRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_2c2

    .line 311
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 312
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 313
    .restart local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "EnableInAppSounds"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 314
    const-string v3, "EnableInAppSounds"

    if-nez v21, :cond_2c0

    const/4 v2, 0x1

    :goto_2b6
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 315
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_5d

    .line 314
    :cond_2c0
    const/4 v2, 0x0

    goto :goto_2b6

    .line 316
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_2c2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->inappVibrateRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_2f5

    .line 317
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 318
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 319
    .restart local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "EnableInAppVibrate"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 320
    const-string v3, "EnableInAppVibrate"

    if-nez v21, :cond_2f3

    const/4 v2, 0x1

    :goto_2e9
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 321
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_5d

    .line 320
    :cond_2f3
    const/4 v2, 0x0

    goto :goto_2e9

    .line 322
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_2f5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->inappPreviewRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_328

    .line 323
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 324
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 325
    .restart local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "EnableInAppPreview"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 326
    const-string v3, "EnableInAppPreview"

    if-nez v21, :cond_326

    const/4 v2, 0x1

    :goto_31c
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 327
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_5d

    .line 326
    :cond_326
    const/4 v2, 0x0

    goto :goto_31c

    .line 328
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_328
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->inchatSoundRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_367

    .line 329
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 330
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 331
    .restart local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "EnableInChatSound"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 332
    const-string v3, "EnableInChatSound"

    if-nez v21, :cond_363

    const/4 v2, 0x1

    :goto_34f
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 333
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 334
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v3

    if-nez v21, :cond_365

    const/4 v2, 0x1

    :goto_35e
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/NotificationsController;->setInChatSoundEnabled(Z)V

    goto/16 :goto_5d

    .line 332
    :cond_363
    const/4 v2, 0x0

    goto :goto_34f

    .line 334
    :cond_365
    const/4 v2, 0x0

    goto :goto_35e

    .line 335
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_367
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->inappPriorityRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_39a

    .line 336
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 337
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 338
    .restart local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "EnableInAppPriority"

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 339
    const-string v3, "EnableInAppPriority"

    if-nez v21, :cond_398

    const/4 v2, 0x1

    :goto_38e
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 340
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_5d

    .line 339
    :cond_398
    const/4 v2, 0x0

    goto :goto_38e

    .line 341
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_39a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->contactJoinedRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_3d8

    .line 342
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 343
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 344
    .restart local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "EnableContactJoined"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 345
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    if-nez v21, :cond_3d4

    const/4 v2, 0x1

    :goto_3c3
    iput-boolean v2, v3, Lorg/telegram/messenger/MessagesController;->enableJoined:Z

    .line 346
    const-string v3, "EnableContactJoined"

    if-nez v21, :cond_3d6

    const/4 v2, 0x1

    :goto_3ca
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 347
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_5d

    .line 345
    :cond_3d4
    const/4 v2, 0x0

    goto :goto_3c3

    .line 346
    :cond_3d6
    const/4 v2, 0x0

    goto :goto_3ca

    .line 348
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_3d8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->pinnedMessageRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_40b

    .line 349
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 350
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 351
    .restart local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "PinnedMessages"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 352
    const-string v3, "PinnedMessages"

    if-nez v21, :cond_409

    const/4 v2, 0x1

    :goto_3ff
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 353
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_5d

    .line 352
    :cond_409
    const/4 v2, 0x0

    goto :goto_3ff

    .line 354
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_40b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->androidAutoAlertRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_43e

    .line 355
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 356
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 357
    .restart local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "EnableAutoNotifications"

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 358
    const-string v3, "EnableAutoNotifications"

    if-nez v21, :cond_43c

    const/4 v2, 0x1

    :goto_432
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 359
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_5d

    .line 358
    :cond_43c
    const/4 v2, 0x0

    goto :goto_432

    .line 360
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_43e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->badgeNumberRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_47d

    .line 361
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 362
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 363
    .restart local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "badgeNumber"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 364
    const-string v3, "badgeNumber"

    if-nez v21, :cond_479

    const/4 v2, 0x1

    :goto_465
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 365
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 366
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v3

    if-nez v21, :cond_47b

    const/4 v2, 0x1

    :goto_474
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/NotificationsController;->setBadgeEnabled(Z)V

    goto/16 :goto_5d

    .line 364
    :cond_479
    const/4 v2, 0x0

    goto :goto_465

    .line 366
    :cond_47b
    const/4 v2, 0x0

    goto :goto_474

    .line 367
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_47d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->notificationsServiceConnectionRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1900(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_4c4

    .line 368
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 369
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    const-string v2, "pushConnection"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 370
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 371
    .restart local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "pushConnection"

    if-nez v21, :cond_4b8

    const/4 v2, 0x1

    :goto_4a4
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 372
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 373
    if-nez v21, :cond_4ba

    .line 374
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->setPushConnectionEnabled(Z)V

    goto/16 :goto_5d

    .line 371
    :cond_4b8
    const/4 v2, 0x0

    goto :goto_4a4

    .line 376
    :cond_4ba
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->setPushConnectionEnabled(Z)V

    goto/16 :goto_5d

    .line 378
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_4c4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->notificationsServiceRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_501

    .line 379
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 380
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    const-string v2, "pushService"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 381
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 382
    .restart local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "pushService"

    if-nez v21, :cond_4fa

    const/4 v2, 0x1

    :goto_4eb
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 383
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 384
    if-nez v21, :cond_4fc

    .line 385
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->startPushService()V

    goto/16 :goto_5d

    .line 382
    :cond_4fa
    const/4 v2, 0x0

    goto :goto_4eb

    .line 387
    :cond_4fc
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->stopPushService()V

    goto/16 :goto_5d

    .line 389
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_501
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messageLedRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_519

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupLedRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_561

    .line 390
    :cond_519
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupLedRow:I
    invoke-static {v7}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v7

    move/from16 v0, p2

    if-ne v0, v7, :cond_55d

    const/4 v6, 0x1

    :goto_53e
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messageLedRow:I
    invoke-static {v7}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v7

    move/from16 v0, p2

    if-ne v0, v7, :cond_55f

    const/4 v7, 0x1

    :goto_54b
    new-instance v8, Lorg/telegram/ui/NotificationsSettingsActivity$3$2;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v8, v0, v1}, Lorg/telegram/ui/NotificationsSettingsActivity$3$2;-><init>(Lorg/telegram/ui/NotificationsSettingsActivity$3;I)V

    invoke-static/range {v3 .. v8}, Lorg/telegram/ui/Components/AlertsCreator;->createColorSelectDialog(Landroid/app/Activity;JZZLjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_5d

    :cond_55d
    const/4 v6, 0x0

    goto :goto_53e

    :cond_55f
    const/4 v7, 0x0

    goto :goto_54b

    .line 399
    :cond_561
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messagePopupNotificationRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_579

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupPopupNotificationRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_5c3

    .line 400
    :cond_579
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 403
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupPopupNotificationRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_5bf

    const/4 v2, 0x1

    :goto_5a0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messagePopupNotificationRow:I
    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_5c1

    const/4 v3, 0x1

    :goto_5ad
    new-instance v8, Lorg/telegram/ui/NotificationsSettingsActivity$3$3;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v8, v0, v1}, Lorg/telegram/ui/NotificationsSettingsActivity$3$3;-><init>(Lorg/telegram/ui/NotificationsSettingsActivity$3;I)V

    invoke-static {v5, v7, v2, v3, v8}, Lorg/telegram/ui/Components/AlertsCreator;->createPopupSelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;ZZLjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_5d

    :cond_5bf
    const/4 v2, 0x0

    goto :goto_5a0

    :cond_5c1
    const/4 v3, 0x0

    goto :goto_5ad

    .line 409
    :cond_5c3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messageVibrateRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_5e7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupVibrateRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_5e7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->callsVibrateRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_642

    .line 410
    :cond_5e7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 413
    const/4 v6, 0x0

    .line 414
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messageVibrateRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_624

    .line 415
    const-string v6, "vibrate_messages"

    .line 421
    :cond_600
    :goto_600
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    const-wide/16 v4, 0x0

    new-instance v7, Lorg/telegram/ui/NotificationsSettingsActivity$3$4;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/NotificationsSettingsActivity$3$4;-><init>(Lorg/telegram/ui/NotificationsSettingsActivity$3;I)V

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/AlertsCreator;->createVibrationSelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;JLjava/lang/String;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_5d

    .line 416
    :cond_624
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupVibrateRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_633

    .line 417
    const-string v6, "vibrate_group"

    goto :goto_600

    .line 418
    :cond_633
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->callsVibrateRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_600

    .line 419
    const-string v6, "vibrate_calls"

    goto :goto_600

    .line 427
    .end local v6    # "key":Ljava/lang/String;
    :cond_642
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messagePriorityRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_65a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupPriorityRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2900(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_69c

    .line 428
    :cond_65a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupPriorityRow:I
    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2900(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_698

    const/4 v12, 0x1

    :goto_679
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messagePriorityRow:I
    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_69a

    const/4 v13, 0x1

    :goto_686
    new-instance v14, Lorg/telegram/ui/NotificationsSettingsActivity$3$5;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v14, v0, v1}, Lorg/telegram/ui/NotificationsSettingsActivity$3$5;-><init>(Lorg/telegram/ui/NotificationsSettingsActivity$3;I)V

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/AlertsCreator;->createPrioritySelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;JZZLjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_5d

    :cond_698
    const/4 v12, 0x0

    goto :goto_679

    :cond_69a
    const/4 v13, 0x0

    goto :goto_686

    .line 434
    :cond_69c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->repeatRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_5d

    .line 435
    new-instance v15, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v15, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 436
    .local v15, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v2, "RepeatNotifications"

    const v3, 0x7f07047d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 437
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const-string v4, "RepeatDisabled"

    const v5, 0x7f07047c

    .line 438
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Minutes"

    const/4 v5, 0x5

    .line 439
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Minutes"

    const/16 v5, 0xa

    .line 440
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Minutes"

    const/16 v5, 0x1e

    .line 441
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "Hours"

    const/4 v5, 0x1

    .line 442
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "Hours"

    const/4 v5, 0x2

    .line 443
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Hours"

    const/4 v5, 0x4

    .line 444
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Lorg/telegram/ui/NotificationsSettingsActivity$3$6;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/NotificationsSettingsActivity$3$6;-><init>(Lorg/telegram/ui/NotificationsSettingsActivity$3;I)V

    .line 437
    invoke-virtual {v15, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 467
    const-string v2, "Cancel"

    const v3, 0x7f0700fe

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_5d

    .line 471
    .end local v15    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local p1    # "view":Landroid/view/View;
    :cond_734
    const/4 v2, 0x0

    goto/16 :goto_68
.end method
