using OnlineVo.DataLayer;
using OnlineVo.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnlineVo.BusinessLayer
{
    public class VoterService
    {
        VoterRepository repository;
        public VoterService()
        {
            repository = new VoterRepository();
        }
        public void AddVoter(Voter voter)
        {
            try
            {
                repository.AddVoter(voter);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public List<Voter> GetVoters()
        {
            try
            {
                return repository.GetAllVoters();
            }
            catch (Exception)
            {
                throw;
            }
        }
    }   
}
