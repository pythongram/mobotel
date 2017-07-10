.class Lorg/telegram/ui/LocationActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "LocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LocationActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LocationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 188
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$1;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 12
    .param p1, "id"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 191
    const/4 v1, -0x1

    if-ne p1, v1, :cond_c

    .line 192
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$1;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/LocationActivity;->finishFragment()V

    .line 214
    :cond_b
    :goto_b
    return-void

    .line 193
    :cond_c
    if-ne p1, v7, :cond_20

    .line 194
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$1;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$000(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 195
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$1;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$000(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    goto :goto_b

    .line 197
    :cond_20
    const/4 v1, 0x3

    if-ne p1, v1, :cond_35

    .line 198
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$1;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$000(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 199
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$1;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$000(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    goto :goto_b

    .line 201
    :cond_35
    if-ne p1, v8, :cond_49

    .line 202
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$1;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$000(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 203
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$1;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$000(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    goto :goto_b

    .line 205
    :cond_49
    if-ne p1, v6, :cond_b

    .line 207
    :try_start_4b
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$1;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$100(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 208
    .local v2, "lat":D
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$1;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$100(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 209
    .local v4, "lon":D
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$1;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/LocationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "geo:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?q="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_ac} :catch_ae

    goto/16 :goto_b

    .line 210
    .end local v2    # "lat":D
    .end local v4    # "lon":D
    :catch_ae
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_b
.end method
