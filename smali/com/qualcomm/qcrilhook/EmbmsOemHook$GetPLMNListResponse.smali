.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;
.super Ljava/lang/Object;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetPLMNListResponse"
.end annotation


# instance fields
.field public plmnList:[B

.field public status:I

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public traceId:I


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V
    .locals 10
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    .param p2, "status"    # I
    .param p3, "buf"    # Ljava/nio/ByteBuffer;

    .line 2314
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2311
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->traceId:I

    .line 2312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->plmnList:[B

    .line 2315
    iput p2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->status:I

    .line 2317
    :goto_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2319
    :try_start_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v0

    .line 2320
    .local v0, "type":I
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v1

    .line 2322
    .local v1, "length":I
    packed-switch v0, :pswitch_data_0

    .line 2350
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 2324
    :pswitch_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 2329
    .local v2, "numOfPlmn":B
    const/16 v3, 0x20

    .line 2330
    .local v3, "space":B
    mul-int/lit8 v4, v2, 0x6

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->plmnList:[B

    .line 2331
    const/4 v4, 0x0

    .line 2332
    .local v4, "index":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_1

    .line 2333
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 2334
    .local v6, "mccLen":B
    iget-object v7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->plmnList:[B

    invoke-virtual {p3, v7, v4, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2335
    add-int/2addr v4, v6

    .line 2336
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 2337
    .local v7, "mncLen":B
    iget-object v8, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->plmnList:[B

    invoke-virtual {p3, v8, v4, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2338
    add-int/2addr v4, v7

    .line 2339
    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 2340
    iget-object v8, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->plmnList:[B

    add-int/lit8 v9, v4, 0x1

    .end local v4    # "index":I
    .local v9, "index":I
    aput-byte v3, v8, v4

    move v4, v9

    .line 2332
    .end local v6    # "mccLen":B
    .end local v7    # "mncLen":B
    .end local v9    # "index":I
    .restart local v4    # "index":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2343
    .end local v5    # "i":I
    :cond_1
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plmnList = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->plmnList:[B

    invoke-static {v7}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    goto :goto_3

    .line 2346
    .end local v2    # "numOfPlmn":B
    .end local v3    # "space":B
    .end local v4    # "index":I
    :pswitch_1
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->traceId:I

    .line 2347
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "traceId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->traceId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    goto :goto_3

    .line 2350
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetPLMNListResponse: Unexpected Type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 2353
    .end local v0    # "type":I
    .end local v1    # "length":I
    :catch_0
    move-exception v0

    .line 2354
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid format of byte buffer received in GetPLMNListResponse"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    :goto_3
    goto/16 :goto_0

    .line 2359
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
