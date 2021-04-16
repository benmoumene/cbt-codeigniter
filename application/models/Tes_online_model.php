<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tes_online_model extends CI_Model{

    public function get_materi(){
        return $this->db->order_by('is_enable DESC', 'id DESC')
                    ->get('materi')->result();
    }

    public function get_materi_user(){
        return $this->db->select('T1.*, T2.name AS user_created_name, T3.name AS user_edited_name', FALSE)
                    ->join('lembaga_user AS T2', 'T2.user_id = T1.created_by')
                    ->join('lembaga_user AS T3', 'T1.updated_by = T3.user_id', 'left')
                    ->order_by('T1.is_enable DESC', 'T1.id DESC')
                    ->get('materi AS T1')->result();
    }

    public function get_materi_enable(){
        return $this->db->select('id, name')
                    ->order_by('id DESC')
                    ->get_where('materi', array('is_enable' => 1))->result();
    }

    public function get_materi_selected($materi_id){
        return $this->db->select('id, name')
                    ->order_by('id DESC')
                    ->get_where('materi', array('id !=' => $materi_id, 'is_enable' => 1))->result();
    }

    public function get_materi_by_id($id_materi){
        return $this->db->get_where('materi', array('id' => $id_materi, 'is_enable' => 1))->result();
    }

    public function get_kelas_enable(){
        return $this->db->select('kelas_id, description')
                    ->order_by('group_kelas_id ASC')
                    ->get_where('v_kelas', array('is_enable_kelas' => 1, 'is_enable_groupkelas' => 1))->result();
    }

    public function get_kelas_selected($kelas_id){
        return $this->db->select('kelas_id, description')
                    ->order_by('group_kelas_id ASC')
                    ->get_where('v_kelas', array('kelas_id !=' => $kelas_id, 'is_enable_kelas' => 1, 'is_enable_groupkelas' => 1))->result();
    }

    public function get_type_paket(){
        return $this->db->order_by('id ASC')
                    ->get_where('type_paket', array('is_enable' => 1))->result();
    }

    public function get_type_paket_selected($type_paket_id){
        return $this->db->select('id, name')
                    ->order_by('id ASC')
                    ->get_where('type_paket', array('id !=' => $type_paket_id, 'is_enable' => 1))->result();
    }

    public function get_detail_buku(){
        return $this->db->order_by('id ASC')
                    ->get_where('detail_buku', array('is_enable' => 1))->result();
    }

    public function get_detail_buku_selected($detail_buku_id){
        return $this->db->select('id, name')
                    ->order_by('id ASC')
                    ->get_where('detail_buku', array('id !=' => $detail_buku_id, 'is_enable' => 1))->result();
    }

    public function get_mode_jawaban_enable(){
        return $this->db->select('id, name')
                    ->order_by('id ASC')
                    ->get_where('detail_mode_jawaban', array('group_mode_jwb_id' => 1, 'is_enable' => 1))->result();
    }

    public function get_mode_jawaban_selected($detail_mode_jwb_id){
        return $this->db->select('id, name')
                    ->order_by('id ASC')
                    ->get_where('detail_mode_jawaban', array('id !=' => $detail_mode_jwb_id, 'group_mode_jwb_id' => 1, 'is_enable' => 1))->result();
    }

    public function get_jenis_soal_enable(){
        return $this->db->select('id, name')
                    ->order_by('id ASC')
                    ->get_where('group_mode_jawaban', array('is_enable' => 1))->result();
    }

    public function get_tipe_kesulitan_enable(){
        return $this->db->select('id, name')
                    ->order_by('id ASC')
                    ->get_where('tipe_kesulitan', array('is_enable' => 1))->result();
    }

    public function get_skala_nilai_enable(){
        return $this->db->select('id, detail')
                    ->order_by('id ASC')
                    ->get_where('pengaturan_universal', array('name' => 'SKALA NILAI', 'is_enable' => 1))->result();
    }

    public function get_skala_nilai_selected($universal_id){
        return $this->db->select('id, detail')
                    ->order_by('id ASC')
                    ->get_where('pengaturan_universal', array('id !=' => $universal_id, 'name' => 'SKALA NILAI', 'is_enable' => 1))->result();
    }

    public function get_buku_enable(){
        return $this->db->select('id, name')
                    ->order_by('id ASC')
                    ->get_where('buku', array('is_enable' => 1))->result();
    }

    public function get_buku_selected($buku_id){
        return $this->db->select('id, name')
                    ->order_by('id ASC')
                    ->get_where('buku', array('id !=' => $buku_id, 'is_enable' => 1))->result();
    }

    public function get_paket_soal(){
        return $this->db->select('T1.paket_soal_id, T1.nama_paket_soal, T1.materi_name, T1.kelas_id, kelas_name, T1.created_datetime, T1.updated_datetime, T1.status_paket_soal, T1.petunjuk, T1.is_enable, T2.name AS user_created_name, T3.name AS user_edited_name, T1.total_soal', FALSE)
                    ->join('lembaga_user AS T2', 'T2.user_id = T1.created_by')
                    ->join('lembaga_user AS T3', 'T1.updated_by = T3.user_id', 'left')
                    ->order_by('T1.is_enable DESC', 'T1.id DESC')
                    ->get('v_paket_soal AS T1')->result();
    }

    public function get_paket_soal_by_id($paket_data_id){
        return $this->db->select('*')
                    ->get_where('v_paket_soal', array('paket_soal_id' => $paket_data_id, 'is_enable' => 1))->row();
    }

    public function get_total_mode_jwb($paket_soal_id){
        return $this->db->select('count_pilgan')
                    ->get_where('v_paket_soal', array('paket_soal_id' => $paket_soal_id, 'is_enable' => 1))->row();
    }

    public function get_total_soal($paket_soal_id){
        return $this->db->select('total_soal')
                    ->get_where('v_paket_soal', array('paket_soal_id' => $paket_soal_id, 'is_enable' => 1))->row();
    }

    public function get_pengaturan_universal_id($name, $detail){
        return $this->db->order_by('id, name, detail, param')
                    ->get_where('pengaturan_universal', array('name' => $name, 'detail' => $detail, 'is_enable' => 1))->row();
    }

    public function get_group_soal_by_kode($kode_group, $paket_soal_id){
        return $this->db->get_where('v_group_soal', array('kode_group' => $kode_group, 'paket_soal_id' => $paket_soal_id, 'is_enable' => 1))->row();
    }

    public function get_bacaan_soal_by_kode($kode_bacaan, $paket_soal_id){
        return $this->db->get_where('bacaan_soal', array('kode_bacaan' => $kode_bacaan, 'paket_soal_id' => $paket_soal_id, 'is_enable' => 1))->row();
    }

    public function get_sesi_pelaksanaan(){
        return $this->db->get('v_sesi_pelaksanaan')->result();
    }

    public function get_paket_soal_sesi(){
        return $this->db->order_by('paket_soal_id DESC')
                    ->get_where('v_paket_soal', array('type_paket_id !=' => 2,  'is_enable' => 1))->result();
    }

    public function get_paket_soal_sesi_selected($paket_soal_id){
        return $this->db->get_where('v_paket_soal', array('paket_soal_id' => $paket_soal_id, 'type_paket_id !=' => 2,  'is_enable' => 1))->row();
    }

    public function get_group_peserta(){
        return $this->db->get('v_group_peserta')->result();
    }

    public function get_komposisi_soal($paket_soal_id){
        return $this->db->get_where('v_komposisi_soal', array('paket_soal_id' => $paket_soal_id))->result();
    }

    public function get_peserta_by_group($group_peserta_id){
        return $this->db->select('user_id')
            ->get_where('peserta', array('group_peserta_id' => $group_peserta_id, 'is_enable' => 1, 'is_lock' => 0))->result();
    }

    public function getUsers($searchTerm=""){

        // Fetch users
        $this->db->select('*');
        $this->db->where("name like '%".$searchTerm."%' ");
        $this->db->where('is_enable', 1);
        $this->db->where('is_lock', 0);
        $fetched_records = $this->db->get('peserta');
        $users = $fetched_records->result_array();
   
        // Initialize Array with fetched data
        $data = array();
        foreach($users as $user){
           $data[] = array("id"=>$user['user_id'], "text"=>$user['no_peserta'].' '.$user['name']);
        }
        return $data;
     }

    public function get_all_soal_by_paketid($paket_soal_id){
       /*  $config_acakan_soal = $this->get_paket_soal_by_id($paket_soal_id);
        $order = $config_acakan_soal->is_acak_soal == 1 ? "CASE WHEN is_acak_soal = 1 THEN 1 ELSE 0 END, CASE WHEN is_acak_soal = 0 THEN id END, RAND()" : 'id ASC'; */
        //Nanti acakan buat user saja
        return $this->db->select('id, RANK() OVER ( ORDER BY id ASC ) AS no_soal', FALSE)
                    ->get_where('bank_soal', array('paket_soal_id' => $paket_soal_id, 'is_enable' => 1))->result();
    }

    public function get_soal_by_id($paket_soal_id, $bank_soal_id){
        return $this->db->select('bank_soal_id, paket_soal_id, group_mode_jwb_id, group_mode_jwb_name, is_acak_soal, acak_soal
                                , is_acak_jawaban, acak_jawaban, no_soal, bank_soal_name, kata_kunci, tipe_kesulitan_id
                                , tipe_kesulitan_name, file, tipe_file, group_soal_id, bacaan_soal_id, isi_bacaan_soal, 
                                group_soal_name, group_soal_petunjuk, bacaan_soal_name, group_soal_audio, group_soal_tipe_audio
                                , url_pembahasan, pembahasan')
                    ->get_where('v_bank_soal', array('paket_soal_id' => $paket_soal_id, 'bank_soal_id' => $bank_soal_id, 'is_enable' => 1))->row();
    }

    public function get_jawaban_by_id($bank_soal_id, $paket_soal_id){
        /* $paket_acakan_jwb = $this->get_paket_soal_by_id($paket_soal_id);
        $soal_acakan_jwb = $this->get_soal_by_id($paket_soal_id, $bank_soal_id); 
        $order = $paket_acakan_jwb->is_acak_jawaban == 1 && $soal_acakan_jwb->is_acak_jawaban == 1 ? 'RAND()' : 'order ASC, id ASC';
        */ //Nanti buat acakan pas user
        return $this->db->select('id, bank_soal_id, order, name, score, is_key')
                    ->order_by('order ASC, id ASC')
                    ->get_where('jawaban', array('bank_soal_id' => $bank_soal_id, 'is_enable' => 1))->result();
    }

    public function get_jawaban_detail($bank_soal_id){
        return $this->db->select('id, bank_soal_id, order, name, score, is_key')
                    ->order_by('order ASC, id ASC')
                    ->get_where('jawaban', array('bank_soal_id' => $bank_soal_id, 'is_enable' => 1))->result();
    }

    public function get_jenis_soal_selected($group_mode_jwb_id){
        return $this->db->select('id, name')
                    ->order_by('id ASC')
                    ->get_where('group_mode_jawaban', array('id !=' => $group_mode_jwb_id, 'is_enable' => 1))->result();
    }

    public function get_tipe_kesulitan_selected($tipe_kesulitan_id){
        return $this->db->select('id, name')
                    ->order_by('id ASC')
                    ->get_where('tipe_kesulitan', array('id !=' => $tipe_kesulitan_id, 'is_enable' => 1))->result();
    }

    public function get_bacaan_soal($paket_soal_id){
        return $this->db->select('*')
                    ->order_by('id DESC')
                    ->get_where('bacaan_soal', array('paket_soal_id' => $paket_soal_id, 'is_enable' => 1))->result();
    }

    public function get_bacaan_soal_selected($paket_soal_id, $bacaan_soal_id){
        return $this->db->select('*')
                    ->order_by('id DESC')
                    ->get_where('bacaan_soal', array('paket_soal_id' => $paket_soal_id, 'id !=' => $bacaan_soal_id, 'is_enable' => 1))->result();
    }

    public function get_bacaan_soal_by_id($bacaan_soal_id){
        return $this->db->get_where('bacaan_soal', array('id' => $bacaan_soal_id, 'is_enable' => 1))->row();
    }

    public function get_group_soal($paket_soal_id){
        return $this->db->select('*')
                    ->order_by('id_group_soal DESC')
                    ->get_where('v_group_soal', array('paket_soal_id' => $paket_soal_id, 'is_enable' => 1))->result();
    }

    public function get_group_soal_selected($paket_soal_id, $group_soal_id){
        return $this->db->select('*')
                    ->order_by('id_group_soal DESC')
                    ->get_where('v_group_soal', array('paket_soal_id' => $paket_soal_id, 'id_group_soal !=' => $group_soal_id, 'is_enable' => 1))->result();
    }

    public function get_group_soal_by_id($group_soal_id){
        return $this->db->get_where('v_group_soal', array('id_group_soal' => $group_soal_id, 'is_enable' => 1))->row();
    }

    public function get_konversi_skor_enable(){
        return $this->db->order_by('id ASC')->get_where('konversi_skor', array('is_enable' => 1))->result();
    }

    public function get_konversi_skor_selected($konversi_skor_id){
        return $this->db->select('id, name')
                    ->order_by('id ASC')
                    ->get_where('konversi_skor', array('id !=' => $konversi_skor_id, 'is_enable' => 1))->result();
    }

    public function get_parent_group($paket_soal_id){
        return $this->db->select('id, name')
                    ->order_by('id DESC')
                    ->get_where('group_soal', array('paket_soal_id' => $paket_soal_id, 'is_enable' => 1))->result();
    }

    public function get_parent_group_selected($paket_soal_id, $parent_id){
        return $this->db->select('id, name')
                    ->order_by('id DESC')
                    ->get_where('group_soal', array('paket_soal_id' => $paket_soal_id, 'id !=' => $parent_id, 'is_enable' => 1))->result();
    }

    public function get_pembahasan($bank_soal_id){
        return $this->db->select('id, url, pembahasan')
                    ->get_where('pembahasan', array('bank_soal_id' => $bank_soal_id, 'is_enable' => 1))->row();
    }

    public function get_total_paket_soal(){
        return $this->db->select('COUNT(paket_soal_id) AS total_paket_soal', FALSE)
                        ->get('v_paket_soal', array('is_enable' => 1))->row();
    }

    public function get_total_peserta(){
        return $this->db->select('COUNT(peserta_id) AS total_peserta', FALSE)
                        ->get('v_peserta', array('is_enable' => 1))->row();
    }

    public function save_soal($data){
        $this->db->trans_start();
        $query = $this->db->insert('bank_soal', $data);
        $id_insert = $this->db->insert_id();
        if ($this->db->trans_status() === FALSE){
			$this->db->trans_rollback();
			return null;
		} else{
			$this->db->trans_commit();
			return $id_insert;
		}
    }

    public function save_jawaban($datas){
        $this->db->trans_start();
        $query = $this->db->insert_batch('jawaban',$datas);
        if ($this->db->trans_status() === FALSE){
			$this->db->trans_rollback();
			return null;
		} else{
			$this->db->trans_commit();
			return $query;
		}
    }

    public function save_jawaban_single($datas){
        $this->db->trans_start();
        $query = $this->db->insert('jawaban',$datas);
        if ($this->db->trans_status() === FALSE){
			$this->db->trans_rollback();
			return null;
		} else{
			$this->db->trans_commit();
			return $query;
		}
    }

    public function save_pembahasan($pembahasan){
        $this->db->trans_start();
        $query = $this->db->insert('pembahasan',$pembahasan);
        if ($this->db->trans_status() === FALSE){
			$this->db->trans_rollback();
			return null;
		} else{
			$this->db->trans_commit();
			return $query;
		}
    }

    public function update_soal($id, $data){
        $this->db->trans_start();
        $this->db->where('id', $id);
        $query = $this->db->update('bank_soal', $data);
        if ($this->db->trans_status() === FALSE){
			$this->db->trans_rollback();
			return null;
		} else{
			$this->db->trans_commit();
			return $query;
		}
    }

    public function update_jawaban($datas){
        $this->db->trans_start();
        $query = $this->db->update_batch('jawaban', $datas, 'id');
        if ($this->db->trans_status() === FALSE){
			$this->db->trans_rollback();
			return null;
		} else{
			$this->db->trans_commit();
			return $query;
		}
    }

    public function disable_jawaban($bank_soal_id){
        $now = date('Y-m-d H:i:s');
        $this->db->trans_start();
        $this->db->set('is_enable', 0);
        $this->db->set('updated_datetime', $now);
        $this->db->where('bank_soal_id', $bank_soal_id);
        $query = $this->db->update('jawaban');
        if ($this->db->trans_status() === FALSE){
			$this->db->trans_rollback();
			return null;
		} else{
			$this->db->trans_commit();
			return $query;
		}
    }

    public function disable_soal($paket_soal_id, $bank_soal_id){
        $now = date('Y-m-d H:i:s');
        $this->db->trans_start();
        $this->db->set('is_enable', 0);
        $this->db->set('updated_datetime', $now);
        $this->db->where('paket_soal_id', $paket_soal_id);
        $this->db->where('id', $bank_soal_id);
        $query = $this->db->update('bank_soal');
        if ($this->db->trans_status() === FALSE){
			$this->db->trans_rollback();
			return null;
		} else{
            $disable_jawaban = $this->disable_jawaban($bank_soal_id); //Disable soal = Disable Jawaban juga
            if(!empty($disable_jawaban)){
                $this->db->trans_commit();
                return $query;
            } else {
                $this->db->trans_rollback();
			    return null;
            }
		}
    }

    public function disable_all_soal($paket_soal_id, $get_all_soal_id){
        $now = date('Y-m-d H:i:s');
        $this->db->trans_start();
        $this->db->set('is_enable', 0);
        $this->db->set('updated_datetime', $now);
        $this->db->where('paket_soal_id', $paket_soal_id);
        $query = $this->db->update('bank_soal');
        if ($this->db->trans_status() === FALSE){
			$this->db->trans_rollback();
			return null;
		} else{
            foreach($get_all_soal_id as $key_soal_id => $val_soal_id){
                $disable_jawaban = $this->disable_jawaban($val_soal_id->id); //Disable soal = Disable Jawaban juga
            }
            if(!empty($disable_jawaban)){
                $this->db->trans_commit();
                return $query;
            } else {
                $this->db->trans_rollback();
			    return null;
            }
        }
    }

    public function update_bacaan_soal($data, $bacaan_soal_id, $paket_soal_id){
        $this->db->where('id', $bacaan_soal_id);
        $this->db->where('paket_soal_id', $paket_soal_id);
        $query = $this->db->update('bacaan_soal', $data);
        if ($this->db->trans_status() === FALSE){
			$this->db->trans_rollback();
			return null;
		} else{
			$this->db->trans_commit();
			return $query;
		}
    }

    public function update_group_soal($data, $group_soal_id, $paket_soal_id){
        $this->db->where('id', $group_soal_id);
        $this->db->where('paket_soal_id', $paket_soal_id);
        $query = $this->db->update('group_soal', $data);
        if ($this->db->trans_status() === FALSE){
			$this->db->trans_rollback();
			return null;
		} else{
			$this->db->trans_commit();
			return $query;
		}
    }

}